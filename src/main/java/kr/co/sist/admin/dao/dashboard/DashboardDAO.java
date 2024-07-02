package kr.co.sist.admin.dao.dashboard;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class DashboardDAO {
    
    private final MyBatisConfig myBatis;

    @Autowired
    public DashboardDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }
    
    //오늘 기준 일주일 회원가입자
    public List<SignupCountVO> getSignupCountsForLastWeek() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<SignupCountVO> result = 
                ss.selectList("kr.co.sist.mapper.dashboard.DashboardMapper.getSignupCountsForLastWeek");
        myBatis.closeHandler(ss);
        return result;
    }
}
