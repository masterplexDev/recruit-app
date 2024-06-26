package kr.co.sist.security;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import kr.co.sist.user.service.basic.UserBasicService;
import kr.co.sist.user.vo.signup.Signup2VO;
import kr.co.sist.user.vo.signup.SignupVO;

@SessionAttributes({"jwt", "resultMsg"})
@Controller
public class SecurityController {

    private final JwtProvider jwtProvider;
    private final UserBasicService ubs;

    @Autowired
    private PasswordEncoder passwordEncoder;


    public SecurityController(JwtProvider jwtProvider, UserBasicService ubs) {
        this.jwtProvider = jwtProvider;
        this.ubs = ubs;
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

    @PostMapping("/user/addUser.do")
    public String addUser(HttpSession session, Model model, Signup2VO signup2VO,
            SessionStatus sessionStatus) {
        String jwt = (String) session.getAttribute("jwt"); // 세션에서 JWT 가져오기
        SignupVO signupVO = jwtProvider.validateJwtAndExtractUserData(jwt);
        // 검증 실패 시 에러 처리
        if (signupVO == null) {
            return "error";
        } else if (signup2VO == null) {
            return "error";
        }

        String password = signupVO.getPassword();
        String cipherPass = passwordEncoder.encode(password);
        System.out.println(cipherPass);
        signupVO.setPassword(cipherPass);

        try {

            int cnt = ubs.addUser(signupVO, signup2VO);
            System.out.println("회원가입 성공 여부 : " + cnt);
            String resultMsg = "";
            if (cnt > 0) {
                session.removeAttribute("jwt");
                resultMsg = "회원가입에 성공 하셨습니다. 감사합니다.";
                System.out.println(resultMsg);
                model.addAttribute("resultMsg", resultMsg);
            } else {
                resultMsg = "회원가입에 실패했습니다. 잠시 후 다시 시도해주세요.";
                model.addAttribute("resultMsg", resultMsg);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "user/signupResult";
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
