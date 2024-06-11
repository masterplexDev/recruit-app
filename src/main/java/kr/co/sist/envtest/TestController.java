package kr.co.sist.envtest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
    @Autowired(required = false)
    private TestService testService;

    @GetMapping("/test.do")
    public String test() {
        List<String> testResult = testService.test();

        for(String result: testResult) {
            System.out.println(result);
        }
        
        return "test";
    }
}
