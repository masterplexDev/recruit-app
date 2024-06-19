package kr.co.sist.admin.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.admin.service.admin.AdminManageService;
import kr.co.sist.admin.vo.admin.LoginVO;

@Controller
public class AdminManageController {
    private final AdminManageService ams;

    public AdminManageController(AdminManageService ams) {
        this.ams = ams;
    }

    @GetMapping("/manage/dashboard/dashboard.do")
    public String adminLogin(LoginVO lVO) {
        String adminId = "";

        adminId = ams.adminLogin(lVO);


        return "dashboard/dashboard";
    }
}
