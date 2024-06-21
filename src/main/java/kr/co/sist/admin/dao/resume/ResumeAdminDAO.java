package kr.co.sist.admin.dao.resume;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class ResumeAdminDAO {
    private final MyBatisConfig myBatis;

    @Autowired(required = false)
    public ResumeAdminDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<ResumeDomain> selectResumes() {
        List<ResumeDomain> resumes = null;

        return resumes;
    }

    public ResumeDomain selectResume() {
        ResumeDomain resume = null;

        return resume;
    }
}
