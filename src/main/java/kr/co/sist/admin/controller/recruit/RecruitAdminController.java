package kr.co.sist.admin.controller.recruit;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.admin.service.recruit.RecruitAdminService;
import kr.co.sist.admin.vo.recruit.SearchVO;

@Controller
@ResponseBody
public class RecruitAdminController {
    private final RecruitAdminService recruitAdminService;

    public RecruitAdminController(RecruitAdminService recruitAdminService) {
        this.recruitAdminService = recruitAdminService;
    }

    @GetMapping("/manage/recruits.do")
    public List<RecruitDomain> searchRecruits(@ModelAttribute SearchVO searchVO) {
        // System.out.println(searchVO.toString());
        return recruitAdminService.searchRecruits(searchVO);
    }

    @GetMapping("/manage/recruit.do")
    public RecruitDomain searchOneRecruit(@RequestParam("id") int recruitId) {
        return recruitAdminService.searchOneRecruit(recruitId);
    }
}
