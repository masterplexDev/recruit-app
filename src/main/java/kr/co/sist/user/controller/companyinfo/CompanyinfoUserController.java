package kr.co.sist.user.controller.companyinfo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.domain.companyinfo.CompanyinfoDomain;
import kr.co.sist.user.service.companyinfo.CompanyinfoUserService;

@Controller
@ResponseBody
public class CompanyinfoUserController {
    private final CompanyinfoUserService companyinfoUserService;

    @Autowired(required = false)
    public CompanyinfoUserController(CompanyinfoUserService companyinfoUserService) {
        this.companyinfoUserService = companyinfoUserService;
    }

    @GetMapping("/companyinfoList.do")
    public List<CompanyinfoDomain> searchAllCompanyinfo() {
        return companyinfoUserService.searchAllCompanyinfo();
    }

//    @GetMapping("/recruit.do")
//    public RecruitDomain searchOneRecruit(@RequestParam("id") int recruitId) {
//        return recruitUserService.searchOneRecruit(recruitId);
//    }
}
