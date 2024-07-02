package kr.co.sist.admin.dao.dashboard;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;

@Repository
public class DashboardDAO {
    @Autowired
    private SqlSession sqlSession;

    //오늘 기준 일주일 회원가입자
    public List<SignupCountVO> getSignupCountsForLastWeek() {
        return sqlSession.selectList("kr.co.sist.admin.mapper.dashboard.DashboardMapper.getSignupCountsForLastWeek");
    }
}
