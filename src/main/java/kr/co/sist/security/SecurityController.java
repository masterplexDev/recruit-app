package kr.co.sist.security;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import kr.co.sist.user.domain.basic.LoginDomain;
import kr.co.sist.user.service.basic.UserBasicService;
import kr.co.sist.user.vo.basic.LoginVO;
import kr.co.sist.user.vo.signup.Signup2VO;
import kr.co.sist.user.vo.signup.SignupVO;

@SessionAttributes({"jwtSignup", "jwtLogin", "resultMsg", "userId", "name"})
@Controller
public class SecurityController {

    private final JwtSignupProvider jwtSignupProvider;
    private final UserBasicService ubs;

    @Autowired
    private PasswordEncoder passwordEncoder;


    public SecurityController(JwtSignupProvider jwtSignupProvider, UserBasicService ubs) {
        this.jwtSignupProvider = jwtSignupProvider;
        this.ubs = ubs;
    }


    @PostMapping("/user/nextSignup.do")
    public String securitySignData(@Validated SignupVO signupVO, BindingResult bindingResult,
            HttpSession session) {

        if (bindingResult.hasErrors()) { // 유효성
            return "user/signup";
        }

        String jwtSignup = jwtSignupProvider.generateJwt(signupVO);

        session.setAttribute("jwtSignup", jwtSignup);

        return "user/signup2";
    }

    @PostMapping("/user/addUser.do")
    public String addUser(HttpSession session, Model model, Signup2VO signup2VO,
            SessionStatus sessionStatus) {
        String jwtSignup = (String) session.getAttribute("jwtSignup"); // 세션에서 JWT 가져오기
        SignupVO signupVO = jwtSignupProvider.validateJwtAndExtractUserData(jwtSignup);
        // 검증 실패 시 에러 처리(추후 에러 페이지 추가 고민해보기)
        if (signupVO == null) {
            return "error";
        } else if (signup2VO == null) {
            return "error";
        }

        String password = signupVO.getPassword();
        String cipherPass = passwordEncoder.encode(password);
        signupVO.setPassword(cipherPass);


        int cnt = ubs.addUser(signupVO, signup2VO);
        System.out.println("회원가입 성공 여부 : " + cnt);
        String resultMsg = "";
        if (cnt > 0) {
            session.removeAttribute("jwtSignup");
            resultMsg = "회원가입에 성공 하셨습니다. 감사합니다.";
            System.out.println(resultMsg);
            model.addAttribute("resultMsg", resultMsg);
        } else {
            resultMsg = "회원가입에 실패했습니다. 잠시 후 다시 시도해주세요.";
            model.addAttribute("resultMsg", resultMsg);
        }


        return "user/signupResult";
    }


    @PostMapping("/user/login.do")
    public String login(LoginVO loginVO, Model model, HttpServletResponse response) {
        String resultMsg = "";

        LoginDomain loginDomain = ubs.userLogin(loginVO);

        if (loginDomain == null) {
            resultMsg = "존재하지 않는 계정입니다.";
        } else {
            boolean loginResult =
                    passwordEncoder.matches(loginVO.getPassword(), loginDomain.getPassword());
            if (loginResult) {
                // 로그인 성공 시

                model.addAttribute("userId", loginDomain.getUserId());
                model.addAttribute("name", loginDomain.getName());
                return "main/main";
            } else {
                resultMsg = "비밀번호가 일치하지 않습니다. 다시 시도해주세요.";
            }
        } // end else
          // resultMsg = "로그인 중 오류가 발생했습니다. 잠시 후 다시 시도해주세요.";

        model.addAttribute("resultMsg", resultMsg);
        return "user/login";
    }

    @GetMapping("/user/logout.do")
    public String logout(SessionStatus ss) {

        ss.setComplete();

        return "main/main";
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
