package kr.co.sist.user.service.review;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.dao.review.UserReviewDAO;
import kr.co.sist.user.domain.review.ReviewDomain;
import kr.co.sist.user.domain.review.ReviewSurveyDomain;
import kr.co.sist.user.vo.review.CompanyInfoVO;
import kr.co.sist.user.vo.review.RecommendVO;
import kr.co.sist.user.vo.review.ReviewQuestionsVO;
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

    //리뷰 화면 출력
    public List<ReviewVO> getReviewScreenOutput(String companyCode) {
        return userReviewDAO.selectReviewScreenOutput(companyCode);
    }
    public List<ReviewVO> getReviewScreenOutput(String companyCode, int offset) {
        return userReviewDAO.selectReviewScreenOutput(companyCode, offset);
    }
    
  //페이지 네이션
    public List<ReviewVO> getReviewScreenOutputWithPagination(String companyCode, int offset) {
        return userReviewDAO.selectReviewScreenOutputWithPagination(companyCode, offset);
    }

    //설문 조사 값 추가
    public void insertReviewSurvey(ReviewSurveyDomain reviewSurveyDomain) {
        userReviewDAO.insertReviewSurvey(reviewSurveyDomain);
    }
    
 // 개별 리뷰 통계 값 가져오기
    public ReviewQuestionsVO getReviewQuestions(int reviewNum) {
        return userReviewDAO.selectReviewQuestions(reviewNum);
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
    
    //리뷰 화면 불러오기
    public CompanyInfoVO getCompanyInfo(String companyCode) {
        System.out.println("Service Layer - companyCode: " + companyCode);
        CompanyInfoVO companyInfo = userReviewDAO.selectCompanyInfo(companyCode);
        System.out.println("Service Layer - companyInfo: " + (companyInfo != null ? companyInfo.toString() : "null"));
        return companyInfo;
    }
    
    //리뷰 작성 처리
    public void insertReview(ReviewDomain reviewDomain) {
        userReviewDAO.insertReview(reviewDomain);
    }
    
    //리뷰 넘버 가져오기
    public int getReviewNumByDomain(ReviewDomain reviewDomain) {
        return userReviewDAO.getReviewNumByDomain(reviewDomain);
    }
    
    //회사 정보 가져오기
    public CompanyInfoVO getCompanyDetailsByCode(String companyCode) {
        return userReviewDAO.getCompanyDetailsByCode(companyCode);
    }
}
