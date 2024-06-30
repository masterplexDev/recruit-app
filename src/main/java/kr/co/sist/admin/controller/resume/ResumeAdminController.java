package kr.co.sist.admin.controller.resume;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.admin.domain.resume.ResumeListDomain;
import kr.co.sist.admin.service.resume.ResumeAdminService;
import kr.co.sist.admin.vo.resume.SearchVO;

@Controller
@ResponseBody
public class ResumeAdminController {
    private final ResumeAdminService resumeAdminService;

    public ResumeAdminController(ResumeAdminService resumeAdminService) {
        this.resumeAdminService = resumeAdminService;
    }

    @GetMapping("/manage/resumes.do")
    public List<ResumeListDomain> searchResumes(@ModelAttribute SearchVO searchVO) {
        List<ResumeListDomain> resumes = resumeAdminService.searchResumes(searchVO);

        return resumes;
    }

    @GetMapping("/manage/resumes/detail.do")
    public ResumeDomain searchOneResume(@RequestParam String resumeNum) {
        ResumeDomain resume = resumeAdminService.searchOneResume(resumeNum);

        return resume;
    }
}
