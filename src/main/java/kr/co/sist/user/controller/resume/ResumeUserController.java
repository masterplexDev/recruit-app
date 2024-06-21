package kr.co.sist.user.controller.resume;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.user.service.resume.ResumeUserService;

@Controller
@ResponseBody
public class ResumeUserController {
    private final ResumeUserService resumeUserService;

    public ResumeUserController(ResumeUserService resumeUserService) {
        this.resumeUserService = resumeUserService;
    }

    public List<ResumeDomain> searchResumes() {
        List<ResumeDomain> resumes = null;

        return resumes;
    }

    public ResumeDomain searchOneResume() {
        ResumeDomain resume = null;

        return resume;
    }
}
