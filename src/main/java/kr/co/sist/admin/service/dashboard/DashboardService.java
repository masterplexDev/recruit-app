package kr.co.sist.admin.service.dashboard;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.dashboard.DashboardDAO;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;

@Service
public class DashboardService {
    @Autowired
    private DashboardDAO dashboardDAO;

    public List<SignupCountVO> getSignupCountsForLastWeek() {
        return dashboardDAO.getSignupCountsForLastWeek();
    }
}