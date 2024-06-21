package kr.co.sist.admin.service.resume;

import java.util.List;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.resume.ResumeAdminDAO;
import kr.co.sist.admin.domain.resume.ResumeDomain;

@Service
public class ResumeAdminService {
    private final ResumeAdminDAO resumeAdminDAO;

    public ResumeAdminService(ResumeAdminDAO resumeAdminDAO) {
        this.resumeAdminDAO = resumeAdminDAO;
    }

    public List<ResumeDomain> searchResumes() {
        List<ResumeDomain> resumes = resumeAdminDAO.selectResumes();

        return resumes;
    }

    public ResumeDomain searchOneResume() {
        ResumeDomain resume = resumeAdminDAO.selectResume();

        return resume;
    }
}
