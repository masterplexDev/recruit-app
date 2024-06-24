package kr.co.sist.admin.dao.resume;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.resume.ResumeDomain;
import kr.co.sist.admin.domain.resume.ResumeListDomain;
import kr.co.sist.admin.vo.resume.SearchVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class ResumeAdminDAO {
    private final MyBatisConfig myBatis;

    @Autowired(required = false)
    public ResumeAdminDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<ResumeListDomain> selectResumes(SearchVO searchVO) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<ResumeListDomain> resumes = new ArrayList<ResumeListDomain>();
        resumes = session.selectList("kr.co.sist.resume.admin.selectResumes", searchVO);
        myBatis.closeHandler(session);

        return resumes;
    }

    public ResumeDomain selectResume() {
        ResumeDomain resume = null;

        return resume;
    }
}
