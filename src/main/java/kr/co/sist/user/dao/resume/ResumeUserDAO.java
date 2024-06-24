package kr.co.sist.user.dao.resume;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.properties.MyBatisConfig;

public class ResumeUserDAO {

    private final MyBatisConfig myBatis;

    @Autowired(required = false)
    public ResumeUserDAO(MyBatisConfig myBatis) {
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
