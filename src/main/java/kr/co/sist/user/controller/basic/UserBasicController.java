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
            response.put("chkMsg", "媛��엯 媛��뒫�븳 �씠硫붿씪�엯�땲�떎.");
        } else {
            response.put("result", "fail");
            response.put("chkMsg", "�씠誘� 媛��엯�맂 �씠硫붿씪�엯�땲�떎.");
        }

        return response;
    }// checkDuplId

    @GetMapping("/user/searchQuestion")
    public String searchPasswordQList(Model model) {
        List<QuestionDomain> list = ubs.searchPasswordQList();
        String resultMsg = "";
        if (list == null) {
            resultMsg = "由ъ뒪�듃 議고쉶 �떎�뙣";
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
            resultMsg = "�엯�젰�븯�떊 �젙蹂대줈 議고쉶�릺�뒗 �젙蹂닿� �뾾�뒿�땲�떎.";
            model.addAttribute("resultMsg", resultMsg);
            return "user/findMail";
        } else {
            resultMsg = "�엯�젰�븯�떊 �젙蹂대줈 議고쉶�맂 怨꾩젙 �젙蹂댁엯�땲�떎.";
            model.addAttribute("resultMsg", resultMsg);
            model.addAttribute("userId", userId);
        }
        System.out.println(userId);

        return "user/findMailComplete";
    }

}
