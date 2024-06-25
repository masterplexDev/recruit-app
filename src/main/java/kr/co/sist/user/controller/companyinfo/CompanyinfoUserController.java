package kr.co.sist.user.controller.companyinfo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.domain.companyinfo.SearchDomain;
import kr.co.sist.user.service.companyinfo.CompanyinfoUserService;

@Controller
public class CompanyinfoUserController {
     @Autowired(required=false)
     private CompanyinfoUserService companyinfoUserService;
//    private final CompanyinfoUserService companyinfoUserService;
//
//    @Autowired(required = false)
//    public CompanyinfoUserController(CompanyinfoUserService companyinfoUserService) {
//        this.companyinfoUserService = companyinfoUserService;
//    }

    @GetMapping("/companyinfo/companyinfoList.do")
    public String searchAllCompanyinfo(Model model) {
        System.out.println("이건 컨트롤러야");
        List<SearchDomain> list=companyinfoUserService.searchAllCompanyinfo();
        model.addAttribute("listCompanyinfo",list);
//        return "companyinfo/companyinfo_list";
        return "companyinfo/user_company_info";
    }
    @GetMapping("/companyinfo/companyinfoDetail.do")
    public String searchCompanyinfoDetail(String companyCode, Model model) {
        List<SearchDomain> list=companyinfoUserService.searchCompanyinfoDetail(companyCode);
        model.addAttribute("companyDetail",list);
        return "companyinfo/companyinfo_list";
//        return "companyinfo/user_company_detail";
    }

//    @GetMapping("/recruit.do")
//    public RecruitDomain searchOneRecruit(@RequestParam("id") int recruitId) {
//        return recruitUserService.searchOneRecruit(recruitId);
//    }
}
