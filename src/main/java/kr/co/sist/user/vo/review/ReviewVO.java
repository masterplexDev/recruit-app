package kr.co.sist.user.vo.review;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ReviewVO {
    private String companyCode;     // 기업 코드
    private String companyName;     // 기업 이름
    private int totalSurveys;       // 총 설문 수
    private double avgQuestion1;    // 질문 1 평균 점수
    private double avgQuestion2;    // 질문 2 평균 점수
    private double avgQuestion3;    // 질문 3 평균 점수
    private double avgQuestion4;    // 질문 4 평균 점수
    private String title;           // 리뷰 제목
    private String content;         // 리뷰 내용
    private String userId;          // 사용자 ID
    private Date inputDate;         // 작성일
    private int recommend;          // 추천수
}
