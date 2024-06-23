package kr.co.sist.admin.controller.resume;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.admin.service.resume.ResumeAdminService;

@Controller
@ResponseBody
public class ResumeAdminController {
    private final ResumeAdminService resumeAdminService;

    public ResumeAdminController(ResumeAdminService resumeAdminService) {
        this.resumeAdminService = resumeAdminService;
    }

    @GetMapping("/manage/resumes")
    public List<ResumeDomain> searchResumes() {
        List<ResumeDomain> resumes = resumeAdminService.searchResumes();

        return resumes;
    }

    @GetMapping("/manage/resumes/detail.do")
    public ResumeDomain searchOneResume() {
        ResumeDomain resume = resumeAdminService.searchOneResume();

        return resume;
    }
}
