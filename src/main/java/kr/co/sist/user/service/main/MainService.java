package kr.co.sist.user.service.main;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.main.UserMainDAO;
import kr.co.sist.user.vo.main.MainVO;

@Service
public class MainService {

    @Autowired
    private UserMainDAO userMainDAO;

    public List<MainVO> getRecentJobPosts() {
        return userMainDAO.selectRecentJobPosts();
    }

    public List<MainVO> getInterestingPositions(String userId) {
        return userMainDAO.selectInterestingPositions(userId);
    }

    public List<MainVO> getHighSalaryPositions() {
        return userMainDAO.selectHighSalaryPositions();
    }

    public List<MainVO> getViewHistory(String userId) {
        return userMainDAO.selectViewHistory(userId);
    }
}