package kr.co.sist.admin.dao.recruit;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.admin.vo.recruit.SearchVO;
import kr.co.sist.exceptions.UnexpectedRowCountException;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class RecruitAdminDAO {
    private final MyBatisConfig myBatis;

    @Autowired(required = false)
    public RecruitAdminDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<RecruitDomain> selectRecruits(SearchVO searchVO) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<RecruitDomain> recruits = new ArrayList<RecruitDomain>();
        recruits = session.selectList("kr.co.sist.recruit.admin.selectRecruits", searchVO);
        myBatis.closeHandler(session);

        return recruits;
    }

    public RecruitDomain selectOneRecruit(int recruitNum) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        RecruitDomain recruit =
                session.selectOne("kr.co.sist.recruit.admin.selectOneRecruit", recruitNum);
        myBatis.closeHandler(session);
        return recruit;
    }

    public boolean deleteRecruit(int recruitNum) {
        boolean result = true;
        SqlSession session = myBatis.getMyBatisHandler(false);
        try {
            int affectedRows =
                    session.update("kr.co.sist.recruit.admin.deleteOneRecruit", recruitNum);

            if (affectedRows != 1) {
                throw new UnexpectedRowCountException(1, affectedRows);
            }

            session.commit();

        } catch (UnexpectedRowCountException e) {
            session.rollback();
            result = false;
        } finally {
            myBatis.closeHandler(session);
        }

        return result;
    }
}
