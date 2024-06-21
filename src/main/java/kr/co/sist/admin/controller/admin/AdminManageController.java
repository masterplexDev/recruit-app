package kr.co.sist.admin.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.admin.service.admin.AdminManageService;
import kr.co.sist.admin.vo.admin.LoginVO;

@Controller
public class AdminManageController {
    private final AdminManageService ams;

    public AdminManageController(AdminManageService ams) {
        this.ams = ams;
    }

    @GetMapping("/manage/dashboard.do")
    public String adminLogin(LoginVO lVO, Model model) {
        String adminId = "test";

        // try {
        // LoginDomain ld = ams.adminLogin(lVO);
        //
        // adminId = ld.getId();
        //
        // model.addAttribute("adminId", adminId);
        //
        // } catch (PersistenceException pe) {
        // pe.printStackTrace();
        // }
        model.addAttribute("adminId", adminId);

        // return "dashboard/dashboard";
        return "test";
    }

    @GetMapping("/manage/admins.do")
    public String searchAdmin(Model model) {

        // List<AdminInfoDomain> list = ams.searchAdminList();
        //
        // model.addAttribute("adminList",list);

        // return "admin/admins";

        return "test";
    }


}
