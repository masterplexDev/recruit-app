package kr.co.sist.admin.controller.dashboard;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.fasterxml.jackson.databind.ObjectMapper;
import kr.co.sist.admin.service.dashboard.DashboardService;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;

@Controller
public class DashboardController {
    @Autowired
    private DashboardService dashboardService;

    //회원가입 화면 표시
    @GetMapping("/manage/dashboard/dashboard.do")
    public String dashboard(Model model) {
        List<SignupCountVO> signupCountsLastWeek = dashboardService.getSignupCountsForLastWeek();
        ObjectMapper mapper = new ObjectMapper();
        try {
            String signupCountsJson = mapper.writeValueAsString(signupCountsLastWeek);
            System.out.println("Signup Counts JSON: " + signupCountsJson); // 로그 출력
            model.addAttribute("signupCountsLastWeekJson", signupCountsJson);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "manage/dashboard/dashboard";
    }
}

