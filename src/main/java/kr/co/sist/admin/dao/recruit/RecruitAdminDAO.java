package kr.co.sist.admin.dao.recruit;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class RecruitAdminDAO {
    private final MyBatisConfig myBatis;

    public RecruitAdminDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<RecruitDomain> test() {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<RecruitDomain> recruits = new ArrayList<RecruitDomain>();
        recruits = session.selectList("kr.co.sist.recruit.admin.selectRecruits");

        return recruits;
    }
}
