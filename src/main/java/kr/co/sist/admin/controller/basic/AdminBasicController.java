package kr.co.sist.admin.controller.basic;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import kr.co.sist.admin.domain.basic.LoginDomain;
import kr.co.sist.admin.service.basic.AdminBasicService;
import kr.co.sist.admin.vo.basic.LoginVO;

@SessionAttributes("adminId")
@Controller
public class AdminBasicController {
    private final AdminBasicService abs;

    public AdminBasicController(AdminBasicService abs) {
        this.abs = abs;
    }

    @PostMapping("/views/login.do")
    public String adminLogin(LoginVO lVO, Model model) {
        String adminId = "";

        LoginDomain ld = abs.adminLogin(lVO);

        if (ld == null) {
            System.out.println("로그인 실패");
            return "test";
        }

        adminId = ld.getAdminId();
        model.addAttribute("adminId", adminId);
        model.addAttribute("loginData", ld);

        // model.addAttribute("adminId", adminId);

        // return "dashboard/dashboard";
        return "test";
    }

    @GetMapping("/logout.do")
    public String logout(SessionStatus ss) {

        ss.setComplete();

        return "test";
    }

    @GetMapping("/manage/admin/admins.do")
    public String searchAdmin(Model model) {

        // List<AdminInfoDomain> list = ams.searchAdminList();
        //
        // model.addAttribute("adminList",list);

        // return "admin/admins";

        return "manage/admin/admins";
    }

    @GetMapping("/manage/user/users.do")
    public String searchUser(Model model) {

        return "manage/user/users";
    }

    @GetMapping("/manage/user/detail.do")
    public String searchUserDetail(Model model) {

        return "manage/user/detail";
    }

    @GetMapping("/manage/adminLogin/adminLoginPage.do")
    public String adminLoginPage(Model model) {

        return "manage/adminLogin/adminLogin";
    }


}
