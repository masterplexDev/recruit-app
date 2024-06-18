package kr.co.sist.admin.controller.recruit;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.admin.service.recruit.RecruitAdminService;

@Controller
@ResponseBody
public class RecruitAdminController {
    private final RecruitAdminService recruitAdminService;

    public RecruitAdminController(RecruitAdminService recruitAdminService) {
        this.recruitAdminService = recruitAdminService;
    }

    @GetMapping("/manage/recruits.do")
    public List<RecruitDomain> searchRecruits() {
        return recruitAdminService.searchRecruits();
    }
}
