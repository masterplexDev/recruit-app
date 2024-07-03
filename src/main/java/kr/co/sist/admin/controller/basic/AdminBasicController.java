package kr.co.sist.admin.controller.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.sist.admin.domain.basic.AdminLoginDomain;
import kr.co.sist.admin.service.basic.AdminBasicService;
import kr.co.sist.admin.vo.basic.AdminLoginVO;

@SessionAttributes("adminId")
@Controller
public class AdminBasicController {
    private final AdminBasicService abs;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public AdminBasicController(AdminBasicService abs) {
        this.abs = abs;
    }

    @PostMapping("/manage/adminLogin/adminLogin.do")
    public String adminLogin(AdminLoginVO lVO, Model model, RedirectAttributes redirectAttributes) {
        String inputAdminId = lVO.getAdminId();
        String inputPassword = lVO.getPassword();

        AdminLoginDomain ld = abs.adminLogin(inputAdminId);

        if (ld == null) {
            redirectAttributes.addFlashAttribute("resultMsg", "존재하지 않는 계정입니다.");
            return "redirect:/manage/adminLogin/adminLoginPage.do";
        }

        boolean login = passwordEncoder.matches(inputPassword, ld.getPassword());

        if (!login) {
            redirectAttributes.addFlashAttribute("resultMsg", "비밀번호가 다릅니다.");
            return "redirect:/manage/adminLogin/adminLoginPage.do";
        }

        String adminId = ld.getAdminId();

        model.addAttribute("adminId", adminId);

        return "/manage/index.do";
    }

    @GetMapping("/logout.do")
    public String logout(SessionStatus ss) {

        ss.setComplete();

        return "/manage/adminLogin/adminLoginPage.do";
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
    public String adminLoginPage() {

        return "manage/adminLogin/adminLogin";
    }


}
