package kr.co.sist.user.controller.review;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import kr.co.sist.user.service.review.ReviewService;
import kr.co.sist.user.vo.review.ReviewVO;

@Controller
public class ReviewController {

    @Autowired(required = false)
    private ReviewService reviewService;

    @GetMapping("/review/reviewResult.do")
    public String reviewScreen(@RequestParam("companyCode") String companyCode, Model model) {
        List<ReviewVO> reviewScreenOutput = reviewService.getReviewScreenOutput(companyCode);
        model.addAttribute("reviewScreenOutput", reviewScreenOutput);
        return "review/reviewResult";
    }
}

