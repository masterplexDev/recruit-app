package kr.co.sist.security;

import org.springframework.stereotype.Controller;

@Controller
public class SecurityController {

    // @PostMapping("manage/adminLogin.do")
    // public String adminLoginProcess(AdminLoginVO lVO, Model model) {
    //
    // // 서비스를 사용하여 입력된 아이디와 비밀번호를 쿼리문에 넣어 실행하게 된다. ==> 현재는 임시로 컨트롤러에서 실행
    //
    // // 1.암호화 객체 생성
    // PasswordEncoder pe = new BCryptPasswordEncoder();
    // // 2.암호화
    // String dbPass = "test1234";
    // String cipherPass = pe.encode(dbPass); // 회원가입 시 insert
    //
    // boolean loginFlag = pe.matches(lVO.getPassword(), cipherPass);
    // model.addAttribute("cipherPass", cipherPass);
    // model.addAttribute("loginResult", loginFlag);
    //
    // return "adminLogin";
    // }
    //
    // @PostMapping("/user/login.do")
    // public String userLoginProcess(UserLoginVO lVO, Model model) {
    //
    // // 서비스를 사용하여 입력된 아이디와 비밀번호를 쿼리문에 넣어 실행하게 된다. ==> 현재는 임시로 컨트롤러에서 실행
    //
    // // 1.암호화 객체 생성
    // PasswordEncoder pe = new BCryptPasswordEncoder();
    // // 2.암호화
    // String dbPass = "test1234";
    // String cipherPass = pe.encode(dbPass); // 회원가입 시 insert
    //
    // boolean loginFlag = pe.matches(lVO.getPassword(), cipherPass);
    // model.addAttribute("cipherPass", cipherPass);
    // model.addAttribute("loginResult", loginFlag);
    //
    // return "login";
    // }
}
