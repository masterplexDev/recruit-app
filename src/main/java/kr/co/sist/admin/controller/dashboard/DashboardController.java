package kr.co.sist.admin.controller.dashboard;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.admin.service.dashboard.DashboardService;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;

@Controller
public class DashboardController {
    @Autowired
    private DashboardService dashboardService;

    //회원가입 화면 표시
    @GetMapping("/admin/dashboard")
    public String dashboard(Model model) {
        List<SignupCountVO> signupCountsLastWeek = dashboardService.getSignupCountsForLastWeek();
        model.addAttribute("signupCountsLastWeek", signupCountsLastWeek);
        return "admin/dashboard";
    }
}

