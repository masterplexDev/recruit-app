package kr.co.sist.user.dao.main;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.vo.main.MainVO;

@Component
public class UserMainDAO {
    
    @Autowired(required = false)
    private MyBatisConfig myBatis;

    public List<MainVO> selectRecentJobPosts() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        return ss.selectList("kr.co.sist.mapper.main.UserMainMapper.selectRecentJobPosts");
    }
    
    public List<MainVO> selectInterestedPositions() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        return ss.selectList("kr.co.sist.user.dao.main.UserMainDAO.selectInterestedPositions");
    }

    public List<MainVO> selectHighSalaryPositions() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        return ss.selectList("kr.co.sist.user.dao.main.UserMainDAO.selectHighSalaryPositions");
    }

    public List<MainVO> selectViewHistory() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        return ss.selectList("kr.co.sist.user.dao.main.UserMainDAO.selectViewHistory");
    }
}
