package kr.co.sist.user.controller.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.sist.user.domain.review.ReviewSurveyDomain;
import kr.co.sist.user.service.review.ReviewService;
import kr.co.sist.user.vo.review.RecommendVO;
import kr.co.sist.user.vo.review.ReviewQuestionsVO;
import kr.co.sist.user.vo.review.ReviewVO;

@Controller
public class ReviewController {
    
    private static final Logger logger = LogManager.getLogger(ReviewService.class);

    @Autowired(required = false)
    private ReviewService reviewService;

    @GetMapping("/review/reviewResult.do")
    public String reviewScreen(@RequestParam(value = "companyCode", defaultValue = "comp_0001") String companyCode, Model model) {
        List<ReviewVO> reviewScreenOutput = reviewService.getReviewScreenOutput(companyCode);

        // 각 리뷰에 대해 개별적인 리뷰 통계 값을 가져와 모델에 추가
        Map<Integer, ReviewQuestionsVO> reviewQuestionsMap = new HashMap<>();
        for (ReviewVO review : reviewScreenOutput) {
            ReviewQuestionsVO reviewQuestions = reviewService.getReviewQuestions(review.getReviewNum());
            reviewQuestionsMap.put(review.getReviewNum(), reviewQuestions);
        }

        model.addAttribute("reviewScreenOutput", reviewScreenOutput);
        model.addAttribute("reviewQuestionsMap", reviewQuestionsMap);
        return "review/reviewResult";
    }
    
    

    @GetMapping("/review/reviewSurvey.do")
    public String reviewSurveyForm() {
        return "review/reviewSurvey";
    }
    
    @PostMapping("/review/reviewSurvey.do")
    public String submitSurvey(
        @RequestParam("companyCode") String companyCode,
        @RequestParam("userId") String userId,
        @ModelAttribute ReviewSurveyDomain reviewSurveyDomain) {

        reviewSurveyDomain.setCompanyCode(companyCode);
        reviewSurveyDomain.setUserId(userId);

        reviewService.insertReviewSurvey(reviewSurveyDomain);
        return "redirect:/review/reviewResult.do?companyCode=" + companyCode; // 성공 후 리디렉션할 페이지 설정
    }
    
    @PostMapping("/review/updateRecommend.do")
    public String updateRecommend(
            @RequestParam("reviewNum") int reviewNum,
            HttpSession session, RedirectAttributes redirectAttributes) {

        String userId = (String) session.getAttribute("userId");
        if (userId == null || userId.isEmpty()) {
            return "redirect:/user/loginPage.do"; // 로그인 페이지로 리디렉션
        }

        logger.info("Controller - updateRecommend() 시작, reviewNum: {}", reviewNum);

        RecommendVO recommendVO = new RecommendVO();
        recommendVO.setUserId(userId);
        recommendVO.setReviewNum(reviewNum);

        // 컨트롤러에서 추천 여부 확인 (서비스의 checkIfRecommended 사용)
        logger.debug("Controller - checkIfRecommended 호출 전"); // 호출 전 로그 추가
        boolean isRecommended = reviewService.checkIfRecommended(recommendVO); 
        logger.debug("Controller - checkIfRecommended 호출 후, isRecommended: {}", isRecommended); // 호출 후 로그 추가

        if (isRecommended) {
            redirectAttributes.addFlashAttribute("recommendMsg", "이미 추천했습니다.");
        } else {
            // 추천 로직 실행 (서비스의 updateRecommend 사용)
            reviewService.updateRecommend(recommendVO);
            redirectAttributes.addFlashAttribute("recommendMsg", "추천이 완료되었습니다.");
        }

        return "redirect:/review/reviewResult.do";
    }
}