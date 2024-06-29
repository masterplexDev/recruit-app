package kr.co.sist.user.service.review;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.dao.review.UserReviewDAO;
import kr.co.sist.user.domain.review.ReviewSurveyDomain;
import kr.co.sist.user.vo.review.RecommendVO;
import kr.co.sist.user.vo.review.ReviewVO;

@Service
public class ReviewService {
    
    private static final Logger logger = LogManager.getLogger(ReviewService.class);
    
    @Autowired
    private MyBatisConfig myBatis; // MyBatisHandler 타입으로 선언

    @Autowired
    public ReviewService(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    @Autowired(required = false)
    private UserReviewDAO userReviewDAO;

    public List<ReviewVO> getReviewScreenOutput(String companyCode) {
        return userReviewDAO.selectReviewScreenOutput(companyCode);
    }

    public void insertReviewSurvey(ReviewSurveyDomain reviewSurveyDomain) {
        userReviewDAO.insertReviewSurvey(reviewSurveyDomain);
    }
    

    
 // 추천수 증가 (이미 추천 여부 확인 로직 제거)
    @Transactional
    public boolean updateRecommend(RecommendVO recommendVO) {
        logger.debug("Service - updateRecommend() 시작, reviewNum: {}", recommendVO.getReviewNum());
        try {
            userReviewDAO.updateRecommend(recommendVO);
            userReviewDAO.insertReviewRecommend(recommendVO);
            return true;
        } catch (Exception e) {
            logger.error("Error occurred while updating recommendation: {}", e.getMessage(), e);
            throw e;
        } finally {
            // mybatis 핸들러를 닫는 부분을 updateRecommend 메서드에서 처리하도록 변경
            SqlSession ss = myBatis.getMyBatisHandler(false);
            myBatis.closeHandler(ss); 
        }
    }
    
    // 이미 추천했는지 확인
    public boolean checkIfRecommended(RecommendVO recommendVO) {
        return userReviewDAO.checkIfRecommended(recommendVO);
    }
    
        
    
    public int addReview(Map<String, Object> params) {
        return userReviewDAO.insertReview(params);
    }
    
    public List<Map<String, Object>> searchReviewById(String userId) {
        return userReviewDAO.searchReviewById(userId);
    }
    
    public List<Map<String, Object>> searchReviewByName(String name) {
        return userReviewDAO.searchReviewByName(name);
    }
    
    public List<Map<String, Object>> searchReviewByTitleOrContent(String keyword) {
        return userReviewDAO.searchReviewByTitleOrContent(keyword);
    }
    
    public Map<String, Object> getReviewDetailsForUpdate(int reviewNum) {
        return userReviewDAO.getReviewDetailsForUpdate(reviewNum);
    }
    
    public int updateReview(Map<String, Object> params) {
        return userReviewDAO.updateReview(params);
    }
    
    public int deleteReview(int reviewNum) {
        return userReviewDAO.deleteReview(reviewNum);
    }
}
