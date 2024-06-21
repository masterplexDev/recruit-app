package kr.co.sist.user.controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import kr.co.sist.user.service.main.MainService;

@Controller
public class MainController {

    @Autowired
    private MainService mainService;

    @GetMapping("/main")
    public String main(Model model, @RequestParam String userId) {
        model.addAttribute("recentJobPosts", mainService.getRecentJobPosts());
        model.addAttribute("interestingPositions", mainService.getInterestingPositions(userId));
        model.addAttribute("highSalaryPositions", mainService.getHighSalaryPositions());
        model.addAttribute("viewHistory", mainService.getViewHistory(userId));
        return "main";
    }
}