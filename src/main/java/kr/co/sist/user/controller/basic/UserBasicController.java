package kr.co.sist.user.controller.basic;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import kr.co.sist.user.domain.basic.QuestionDomain;
import kr.co.sist.user.service.basic.UserBasicService;
import kr.co.sist.user.vo.basic.FindMailVO;

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

    @GetMapping("/user/signupPage.do")
    public String signupPage() {
        return "user/signup";
    }

    @GetMapping("/user/findMail.do")
    public String findMailPage() {
        return "user/findMail";
    }

    @GetMapping("/user/findPass.do")
    public String findPassPage() {
        return "user/findPass";
    }

    @GetMapping("/main/mainPage.do")
    public String mainPage() {
        return "main/main";
    }

    @GetMapping("/user/checkDuplId.do")
    public @ResponseBody Map<String, String> checkDuplId(String userId) {

        String checkId = ubs.checkDuplicationId(userId);

        Map<String, String> response = new HashMap<String, String>();

        if (checkId == null || checkId.isEmpty()) {
            response.put("result", "success");
            response.put("chkMsg", "가입 가능한 이메일입니다.");
        } else {
            response.put("result", "fail");
            response.put("chkMsg", "이미 가입된 이메일입니다.");
        }

        return response;
    }// checkDuplId

    @GetMapping("/user/searchQuestion")
    public String searchPasswordQList(Model model) {
        List<QuestionDomain> list = ubs.searchPasswordQList();
        String resultMsg = "";
        if (list == null) {
            resultMsg = "리스트 조회 실패";
            System.out.println(resultMsg);
            model.addAttribute("resultMsg", resultMsg);
        } else {
            model.addAttribute("questionList", list);
        }

        return "";
    }

    @PostMapping("/user/findMailComplete.do")
    public String findUserId(FindMailVO fmVO, Model model) {

        String userId = ubs.findUserId(fmVO);
        String resultMsg = "";
        if (userId == null || userId.isEmpty()) {
            resultMsg = "입력하신 정보로 조회되는 정보가 없습니다.";
            model.addAttribute("resultMsg", resultMsg);
            return "user/findMail";
        } else {
            resultMsg = "입력하신 정보로 조회된 계정 정보입니다.";
            model.addAttribute("resultMsg", resultMsg);
            model.addAttribute("userId", userId);
        }
        System.out.println(userId);

        return "user/findMailComplete";
    }

}
