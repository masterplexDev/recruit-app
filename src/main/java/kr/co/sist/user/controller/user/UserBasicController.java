package kr.co.sist.user.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import kr.co.sist.user.domain.basic.LoginDomain;
import kr.co.sist.user.service.basic.UserBasicService;
import kr.co.sist.user.vo.basic.LoginVO;

@SessionAttributes({"userId", "name"})
@Controller
public class UserBasicController {

    private final UserBasicService ubs;

    public UserBasicController(UserBasicService ubs) {
        this.ubs = ubs;
    }


    @GetMapping("/user/loginPage.do")
    public String LoginPage() {
        return "user/login";
    }


    @PostMapping("/user/login.do")
    public String login(LoginVO lVO, Model model) {

        LoginDomain ld = ubs.userLogin(lVO);
        String resultMsg = "";


        if (ld != null) {
            resultMsg = "로그인에 성공 했습니다.";
            model.addAttribute("userId", ld.getUserId());
            model.addAttribute("name", ld.getName());
        } else {
            resultMsg = "로그인에 실패했습니다. 다시 시도해주세요.";
        }

        model.addAttribute("resultMsg", resultMsg);

        return "user/mypage/mypageUserInfo";
    }

    @GetMapping("/user/logout.do")
    public String logout(SessionStatus ss) {

        ss.setComplete();

        return "user/login";
    }

}
