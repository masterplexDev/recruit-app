package kr.co.sist.user.dao.recruit;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.vo.recruit.SearchVO;

@Component
public class RecruitUserDAO {
    private final MyBatisConfig myBatis;

    @Autowired(required = false)
    public RecruitUserDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<RecruitDomain> selectRecruits(SearchVO searchVO) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<RecruitDomain> recruits = new ArrayList<RecruitDomain>();
        recruits = session.selectList("kr.co.sist.recruit.user.selectRecruits", searchVO);
        myBatis.closeHandler(session);

        return recruits;
    }

    public RecruitDomain selectOneRecruit(int recruitNum) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        RecruitDomain recruit =
                session.selectOne("kr.co.sist.recruit.user.selectOneRecruit", recruitNum);
        myBatis.closeHandler(session);
        System.out.println(recruit.toString());
        return recruit;
    }
}
