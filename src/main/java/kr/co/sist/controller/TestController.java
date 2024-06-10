package kr.co.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
    @GetMapping("/test.do")
    public String test() {
        System.out.println("test controller called");
        return "test";
    }
}
