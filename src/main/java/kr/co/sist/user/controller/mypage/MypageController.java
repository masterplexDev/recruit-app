package kr.co.sist.user.controller.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {


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

    @GetMapping("/user/mypage/modifyPass.do")
    public String modifyPass() {
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
