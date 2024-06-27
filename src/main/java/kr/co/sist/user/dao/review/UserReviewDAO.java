package kr.co.sist.user.dao.review;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.vo.review.ReviewVO;

@Component
public class UserReviewDAO {

    private final MyBatisConfig myBatis;

    @Autowired
    public UserReviewDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<ReviewVO> selectReviewScreenOutput(String companyCode) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<ReviewVO> result = 
                ss.selectList("kr.co.sist.user.mapper.review.UserReviewMapper.selectReviewScreenOutput", companyCode);
        myBatis.closeHandler(ss);
        return result;
    }

    public int insertReviewSurvey(Map<String, Object> params) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = 
                ss.insert("kr.co.sist.user.mapper.review.UserReviewMapper.insertReviewSurvey", params);
        myBatis.closeHandler(ss);
        return result;
    }

    public int insertReview(Map<String, Object> params) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = 
                ss.insert("kr.co.sist.user.mapper.review.UserReviewMapper.insertReview", params);
        myBatis.closeHandler(ss);
        return result;
    }
    
    public List<Map<String, Object>> searchReviewById(String userId) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<Map<String, Object>> result = 
                ss.selectList("kr.co.sist.user.mapper.review.UserReviewMapper.searchReviewById", userId);
        myBatis.closeHandler(ss);
        return result;
    }
    
    public List<Map<String, Object>> searchReviewByName(String name) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<Map<String, Object>> result = 
                ss.selectList("kr.co.sist.user.mapper.review.UserReviewMapper.searchReviewByName", name);
        myBatis.closeHandler(ss);
        return result;
    }
    
    public List<Map<String, Object>> searchReviewByTitleOrContent(String keyword) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<Map<String, Object>> result = 
                ss.selectList("kr.co.sist.user.mapper.review.UserReviewMapper.searchReviewByTitleOrContent", keyword);
        myBatis.closeHandler(ss);
        return result;
    }
    
    public Map<String, Object> getReviewDetailsForUpdate(int reviewNum) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        Map<String, Object> result = 
                ss.selectOne("kr.co.sist.user.mapper.review.UserReviewMapper.getReviewDetailsForUpdate", reviewNum);
        myBatis.closeHandler(ss);
        return result;
    }
    
    public int updateReview(Map<String, Object> params) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = 
                ss.update("kr.co.sist.user.mapper.review.UserReviewMapper.updateReview", params);
        myBatis.closeHandler(ss);
        return result;
    }
    
    public int deleteReview(int reviewNum) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = 
                ss.delete("kr.co.sist.user.mapper.review.UserReviewMapper.deleteReview", reviewNum);
        myBatis.closeHandler(ss);
        return result;
    }
}
