package kr.co.sist.user.main.service;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.user.main.dao.MainDAO;

@Service
public class MainService {

    @Autowired
    private MainDAO mainDAO;

    public List<Map<String, Object>> getRecentJobPosts() {
        return mainDAO.selectRecentJobPosts();
    }

    public List<Map<String, Object>> getInterestingPositions(String userId) {
        return mainDAO.selectInterestingPositions(userId);
    }

    public List<Map<String, Object>> getHighSalaryPositions() {
        return mainDAO.selectHighSalaryPositions();
    }

    public List<Map<String, Object>> getViewHistory(String userId) {
        return mainDAO.selectViewHistory(userId);
    }
}