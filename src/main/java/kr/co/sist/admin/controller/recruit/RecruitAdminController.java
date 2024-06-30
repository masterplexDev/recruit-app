package kr.co.sist.admin.controller.recruit;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.admin.service.recruit.RecruitAdminService;
import kr.co.sist.admin.vo.recruit.SearchVO;

@Controller
public class RecruitAdminController {
    private final RecruitAdminService recruitAdminService;

    @Autowired(required = false)
    public RecruitAdminController(RecruitAdminService recruitAdminService) {
        this.recruitAdminService = recruitAdminService;
    }

    @GetMapping("/manage/recruits.do")
    public String showResumePage(SearchVO searchVO, Model model) {
        model.addAttribute("searchVO", searchVO);
        return "/manage/recruit/recruits";
    }

    @GetMapping("/manage/recruits/detail.do")
    public String showResumeDetailPage() {
        return "/manage/recruit/detail";
    }

    @GetMapping("/api/manage/recruits.do")
    @ResponseBody
    public List<RecruitDomain> searchRecruits(@ModelAttribute SearchVO searchVO) {
        return recruitAdminService.searchRecruits(searchVO);
    }

    @GetMapping("/api/manage/recruit.do")
    @ResponseBody
    public RecruitDomain searchOneRecruit(@RequestParam("id") int recruitNum) {
        return recruitAdminService.searchOneRecruit(recruitNum);
    }

    @DeleteMapping("/api/manage/recruit.do")
    @ResponseBody
    public boolean deleteRecruit(@RequestParam int recruitNum) {
        return recruitAdminService.deleteRecruit(recruitNum);
    }
}
