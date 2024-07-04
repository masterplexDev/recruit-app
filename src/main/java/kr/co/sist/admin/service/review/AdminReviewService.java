package kr.co.sist.admin.service.review;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.review.AdminReviewDAO;
import kr.co.sist.admin.vo.review.ReviewVO;

@Service
public class AdminReviewService {

    private static final Logger logger = LoggerFactory.getLogger(AdminReviewService.class);

    @Autowired
    private AdminReviewDAO adminReviewDAO;

    public List<ReviewVO> searchReviewById(String userId) {
        logger.debug("searchReviewById called with userId: {}", userId);
        return adminReviewDAO.searchReviewById(userId);
    }

    public List<ReviewVO> searchReviewByName(String name) {
        logger.debug("searchReviewByName called with name: {}", name);
        return adminReviewDAO.searchReviewByName(name);
    }

    public List<ReviewVO> searchReviewByTitleOrContent(String keyword) {
        logger.debug("searchReviewByTitleOrContent called with keyword: {}", keyword);
        return adminReviewDAO.searchReviewByTitleOrContent(keyword);
    }

    public List<ReviewVO> getAllReviews() {
        logger.debug("getAllReviews called");
        return adminReviewDAO.getAllReviews();
    }

    public ReviewVO getReviewDetailsForUpdate(int reviewNum) {
        logger.debug("getReviewDetailsForUpdate called with reviewNum: {}", reviewNum);
        return adminReviewDAO.getReviewDetailsForUpdate(reviewNum);
    }

    public int updateReview(ReviewVO review) {
        logger.debug("updateReview called with review: {}", review);
        return adminReviewDAO.updateReview(review);
    }

    public int deleteReview(int reviewNum) {
        logger.debug("deleteReview called with reviewNum: {}", reviewNum);
        return adminReviewDAO.deleteReview(reviewNum);
    }
}
