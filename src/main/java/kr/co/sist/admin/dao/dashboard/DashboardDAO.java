package kr.co.sist.admin.dao.dashboard;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.vo.dashboard.RegisteredCompanyCountVO;
import kr.co.sist.admin.vo.dashboard.ReviewCountVO;
import kr.co.sist.admin.vo.dashboard.SignupCountVO;
import kr.co.sist.admin.vo.dashboard.SkillCountVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class DashboardDAO {
    
    private final MyBatisConfig myBatis;

    @Autowired
    public DashboardDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }
    
    //���� ���� ������ ȸ��������
    public List<SignupCountVO> getSignupCountsForLastWeek() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<SignupCountVO> result = 
                ss.selectList("kr.co.sist.mapper.dashboard.DashboardMapper.getSignupCountsForLastWeek");
        myBatis.closeHandler(ss);
        return result;
    }
    
    // ���� ���� ������ ��� ��� ��
    public List<RegisteredCompanyCountVO> getRegisteredCompanyCountsForLastWeek() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<RegisteredCompanyCountVO> result = 
                ss.selectList("kr.co.sist.mapper.dashboard.DashboardMapper.getRegisteredCompanyCountsForLastWeek");
        myBatis.closeHandler(ss);
        return result;
    }
    
    // ��� ���� ��
    public List<SkillCountVO> getSkillCounts() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<SkillCountVO> result = 
                ss.selectList("kr.co.sist.mapper.dashboard.DashboardMapper.getSkillCounts");
        myBatis.closeHandler(ss);
        return result;
    }
    
    // �ֱ� 6���� ���� ��
    public List<ReviewCountVO> getReviewCountsForLastSixMonths() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<ReviewCountVO> result = 
                ss.selectList("kr.co.sist.mapper.dashboard.DashboardMapper.getReviewCountsForLastSixMonths");
        myBatis.closeHandler(ss);
        return result;
    }
    
    
}