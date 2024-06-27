package kr.co.sist.user.controller.review;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import kr.co.sist.user.domain.review.ReviewSurveyDomain;
import kr.co.sist.user.service.review.ReviewService;
import kr.co.sist.user.vo.review.ReviewVO;

@Controller
public class ReviewController {

    @Autowired(required = false)
    private ReviewService reviewService;

    @GetMapping("/review/reviewResult.do")
    public String reviewScreen(@RequestParam(value = "companyCode", defaultValue = "comp_0001") String companyCode, Model model) {
        List<ReviewVO> reviewScreenOutput = reviewService.getReviewScreenOutput(companyCode);
        model.addAttribute("reviewScreenOutput", reviewScreenOutput);
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
    public String updateRecommend(@RequestParam("reviewNum") int reviewNum) {
        reviewService.updateRecommend(reviewNum);
        return "redirect:/review/reviewResult.do"; // 적절한 페이지로 리디렉션
    }
}