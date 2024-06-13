package kr.co.sist.cssextract;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class ReviewCssExtractorFromJsp {

    public static void main(String[] args) {
        String jspFileUrl = "http://localhost/recruit-app/review/reviewResult.jsp";  // JSP 파일 URL (절대 경로 대입)
        String outputDirectory = "C:/dev/recruit-app/src/main/webapp/assets/css/review";// 아웃풋 파일 저장 경로 (수정 필요)
        String updatedJspFilePath = "C:/dev/recruit-app/src/main/webapp/main/reviewResult_updated.jsp"; // 업데이트 파일 저장 경로+ 저장명 지정 (수정 필요)
        String baseUrl = "http://localhost/recruit-app/assets/css/review/"; //CSS 파일내부 리소스 파일의 상대 경로를 절대 경로로 변경할 때 사용되는 기본 URL
        //(CSS 파일 저장 경로와 같아야 함)

        try {
            // URL에서 HTML 로드
            Document doc = Jsoup.connect(jspFileUrl)
                                .timeout(60000) // 타임아웃 설정 (60초)
                                .header("Content-Type", "text/html; charset=UTF-8")
                                .get();

            // CSS 파일 링크 추출
            Elements links = doc.select("link[rel=stylesheet], link[as=style]");

            // 출력 디렉토리 생성
            File dir = new File(outputDirectory);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            // CSS 파일 다운로드 및 저장, 링크 수정
            for (Element link : links) {
                String cssUrl = link.attr("href");
                String fileName = cssUrl.substring(cssUrl.lastIndexOf('/') + 1);
                File outputFile = new File(dir, fileName);

                // 파일 다운로드
                FileUtils.copyURLToFile(new URL(cssUrl), outputFile);
                System.out.println("Downloaded: " + cssUrl + " to " + outputFile.getAbsolutePath());

                // 파일 존재 여부 확인
                if (outputFile.exists()) {
                    System.out.println("File exists: " + outputFile.getAbsolutePath());

                    // CSS 파일 내부의 경로 수정 및 리소스 다운로드
                    String cssContent = new String(Files.readAllBytes(outputFile.toPath()), StandardCharsets.UTF_8);
                    Pattern pattern = Pattern.compile("url\\(([^)]+)\\)");
                    Matcher matcher = pattern.matcher(cssContent);
                    while (matcher.find()) {
                        String resourceUrl = matcher.group(1).replace("\"", "").replace("'", "");
                        // 상대 경로와 절대 경로 모두 처리
                        if (!resourceUrl.startsWith("http")) {
                            try {
                                // 쿼리 스트링 제거
                                String resourceFileName = resourceUrl.contains("?") ? resourceUrl.substring(resourceUrl.lastIndexOf('/') + 1, resourceUrl.indexOf('?')) : resourceUrl.substring(resourceUrl.lastIndexOf('/') + 1);
                                File resourceOutputFile = new File(dir, resourceFileName);

                                // 리소스 다운로드
                                FileUtils.copyURLToFile(new URL(new URL(cssUrl), resourceUrl.split("\\?")[0]), resourceOutputFile);
                                System.out.println("Downloaded resource: " + resourceUrl + " to " + resourceOutputFile.getAbsolutePath());

                                // CSS 내용 수정
                                String absoluteResourceUrl = baseUrl + resourceFileName;
                                cssContent = cssContent.replace(resourceUrl, absoluteResourceUrl);
                            } catch (IOException e) {
                                System.out.println("Failed to download resource: " + resourceUrl + " - " + e.getMessage());
                            }
                        }
                    }

                    // 수정된 CSS 파일 쓰기
                    try (BufferedWriter cssWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outputFile), StandardCharsets.UTF_8))) {
                        cssWriter.write(cssContent);
                    }
                } else {
                    System.out.println("File does not exist: " + outputFile.getAbsolutePath());
                }

                // 링크를 절대 경로로 수정
                String localCssPath = baseUrl + fileName;
                link.attr("href", localCssPath);
            }

            // 수정된 JSP 내용을 새로운 파일에 저장
            try (BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(updatedJspFilePath), StandardCharsets.UTF_8))) {
                writer.write("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\"\r\n"
                        + "    pageEncoding=\"UTF-8\"%>\r\n");
                writer.write(doc.outerHtml());
            }
            System.out.println("Updated JSP file saved to: " + updatedJspFilePath);

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
