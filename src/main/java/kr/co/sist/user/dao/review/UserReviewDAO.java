package kr.co.sist.user.dao.review;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.domain.review.ReviewSurveyDomain;
import kr.co.sist.user.vo.review.ReviewVO;

@Component
public class UserReviewDAO {

    private final MyBatisConfig myBatis;

    @Autowired
    public UserReviewDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    // 리뷰 화면 출력
    public List<ReviewVO> selectReviewScreenOutput(String companyCode) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<ReviewVO> result = 
                ss.selectList("kr.co.sist.user.mapper.review.UserReviewMapper.selectReviewScreenOutput", companyCode);
        myBatis.closeHandler(ss);
        return result;
    }

    //리뷰 설문 작성
    public int insertReviewSurvey(ReviewSurveyDomain reviewSurveyDomain) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = ss.insert("kr.co.sist.user.mapper.review.UserReviewMapper.insertReviewSurvey", reviewSurveyDomain);
        myBatis.closeHandler(ss);
        return result;
    }
    
    // 추천수 증가
    public int updateRecommend(int reviewNum) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = ss.update("kr.co.sist.user.mapper.review.UserReviewMapper.updateRecommend", reviewNum);
        myBatis.closeHandler(ss);
        return result;
    }

    // 추천 기록 추가
    public int insertReviewRecommend(Map<String, Object> params) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = ss.insert("kr.co.sist.user.mapper.review.UserReviewMapper.insertReviewRecommend", params);
        myBatis.closeHandler(ss);
        return result;
    }

    // 이미 추천했는지 확인
    public boolean checkIfRecommended(Map<String, Object> params) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        int count = ss.selectOne("kr.co.sist.user.mapper.review.UserReviewMapper.checkIfRecommended", params);
        myBatis.closeHandler(ss);
        return count > 0;
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
