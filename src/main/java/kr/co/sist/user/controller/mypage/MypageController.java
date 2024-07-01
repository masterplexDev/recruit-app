package kr.co.sist.user.controller.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.user.service.mypage.MypageService;

@Controller
public class MypageController {

    private MypageService ms;

    public MypageController(MypageService ms) {
        this.ms = ms;
    }


    @GetMapping("/user/mypage/mypageUserInfo.do")
    public String mypageInfo() {
        return "user/mypage/mypageUserInfo";
    }

    @GetMapping("/user/mypage/checkPass.do")
    public String checkPass() {
        return "user/mypage/checkPass";
    }

    @GetMapping("/user/mypage/modifyUserInfo.do")
    public String modifyInfo() {
        return "user/mypage/modifyUserInfo";
    }

    @GetMapping("/user/mypage/modifyPassPage.do")
    public String modifyPassPage() {
        return "user/mypage/modifyPass";
    }

    @GetMapping("/user/mypage/mypageApply.do")
    public String mypageApply() {
        return "user/mypage/mypageApply";
    }

    @GetMapping("/user/mypage/mypageCareer.do")
    public String mypageCareer() {
        return "user/mypage/mypageCareer";
    }

    @GetMapping("/user/mypage/mypageReview.do")
    public String mypageReview() {
        return "user/mypage/mypageReview";
    }

}
