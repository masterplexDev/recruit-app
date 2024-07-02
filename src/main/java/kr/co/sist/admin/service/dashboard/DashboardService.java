package kr.co.sist.admin.service.dashboard;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.dashboard.DashboardDAO;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;
import kr.co.sist.properties.MyBatisConfig;

@Service
public class DashboardService {
    @Autowired
    private MyBatisConfig myBatis; // MyBatisHandler 타입으로 선언
    
    @Autowired
    public DashboardService(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }
    
    @Autowired(required = false)
    private DashboardDAO dashboardDAO;

    public List<SignupCountVO> getSignupCountsForLastWeek() {
        return dashboardDAO.getSignupCountsForLastWeek();
    }
}