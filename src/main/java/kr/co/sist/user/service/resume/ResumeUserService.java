package kr.co.sist.user.service.resume;

import java.util.List;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.user.dao.resume.ResumeUserDAO;

public class ResumeUserService {
    private final ResumeUserDAO resumeUserDAO;

    public ResumeUserService(ResumeUserDAO resumeUserDAO) {
        this.resumeUserDAO = resumeUserDAO;
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
