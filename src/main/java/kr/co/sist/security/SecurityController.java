package kr.co.sist.security;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import kr.co.sist.user.vo.signup.SignupVO;

@SessionAttributes({"jwt"})
@Controller
public class SecurityController {

    private final JwtProvider jwtProvider;

    public SecurityController(JwtProvider jwtProvider) {
        this.jwtProvider = jwtProvider;
    }

    @PostMapping("/user/nextSignup.do")
    public String securitySignData(@Validated SignupVO signupVO, BindingResult bindingResult,
            HttpSession session) {

        if (bindingResult.hasErrors()) { // 유효성
            return "user/signup";
        }

        String jwt = jwtProvider.generateJwt(signupVO);

        session.setAttribute("jwt", jwt);

        return "user/signup2";
    }

    @GetMapping("/user/signup2.do")
    public String signup2(HttpSession session, Model model) {
        String jwt = (String) session.getAttribute("jwt"); // 세션에서 JWT 가져오기
        SignupVO signupVO = jwtProvider.validateJwtAndExtractUserData(jwt);
        if (signupVO == null) {
            // SignupVO 검증 실패 시 에러 처리
            return "error";
        }

        model.addAttribute("signupVO", signupVO);

        return "user/signup2";
    }


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
