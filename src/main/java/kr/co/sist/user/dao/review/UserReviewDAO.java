package kr.co.sist.user.dao.review;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.domain.review.ReviewSurveyDomain;
import kr.co.sist.user.service.review.ReviewService;
import kr.co.sist.user.vo.review.RecommendVO;
import kr.co.sist.user.vo.review.ReviewVO;

@Component
public class UserReviewDAO {
    
    private static final Logger logger = LogManager.getLogger(ReviewService.class);

    private final MyBatisConfig myBatis;

    @Autowired
    public UserReviewDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    // 리뷰 화면 출력
    public List<ReviewVO> selectReviewScreenOutput(String companyCode) {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<ReviewVO> result = 
                ss.selectList("kr.co.sist.user.mapper.review.ReviewMapper.selectReviewScreenOutput", companyCode);
        myBatis.closeHandler(ss);
        return result;
    }

    //리뷰 설문 작성
    public int insertReviewSurvey(ReviewSurveyDomain reviewSurveyDomain) {
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = ss.insert("kr.co.sist.user.mapper.review.ReviewMapper.insertReviewSurvey", reviewSurveyDomain);
        myBatis.closeHandler(ss);
        return result;
    }
    
 // 추천수 증가
    public int updateRecommend(RecommendVO recommendVO) {
        logger.debug("DAO - updateRecommend() 시작"); // 메서드 시작 로그
        logger.debug("DAO - recommendVO: {}", recommendVO); // RecommendVO 값 확인
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = ss.update("kr.co.sist.user.mapper.review.ReviewMapper.updateRecommend", recommendVO);
        myBatis.closeHandler(ss);
        logger.debug("DAO - updateRecommend() 결과: {}", result); // 결과 로그
        return result;
    }

    // 추천 기록 추가
    public int insertReviewRecommend(RecommendVO recommendVO) {
        logger.debug("DAO - insertReviewRecommend() 시작"); // 메서드 시작 로그
        logger.debug("DAO - recommendVO: {}", recommendVO); // RecommendVO 값 확인
        SqlSession ss = myBatis.getMyBatisHandler(true);
        int result = ss.insert("kr.co.sist.user.mapper.review.ReviewMapper.insertReviewRecommend", recommendVO);
        myBatis.closeHandler(ss);
        logger.debug("DAO - insertReviewRecommend() 결과: {}", result); // 결과 로그
        return result;
    }

    // 이미 추천했는지 확인
    public boolean checkIfRecommended(RecommendVO recommendVO) { // ReviewVO -> RecommendVO 로 변경
        logger.debug("DAO - checkIfRecommended() 시작");
        logger.debug("DAO - recommendVO: {}", recommendVO);
        
        SqlSession ss = myBatis.getMyBatisHandler(false);
        try {
            int count = ss.selectOne("kr.co.sist.user.mapper.review.ReviewMapper.checkIfRecommended", recommendVO);
            logger.debug("DAO - checkIfRecommended() 결과: {}", count);
            return count > 0;
        } finally {
            myBatis.closeHandler(ss);
        }
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
