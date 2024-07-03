package kr.co.sist.user.service.recruit;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.user.dao.recruit.RecruitUserDAO;
import kr.co.sist.user.domain.recruit.RecruitListDomain;
import kr.co.sist.user.vo.recruit.SearchVO;

@Service
public class RecruitUserService {
    private final RecruitUserDAO recruitUserDAO;

    @Autowired(required = false)
    public RecruitUserService(RecruitUserDAO recruitUserDAO) {
        this.recruitUserDAO = recruitUserDAO;
    }

    public List<RecruitListDomain> searchRecruits(SearchVO searchVO) {
        return recruitUserDAO.selectRecruits(searchVO);
    }

    public RecruitDomain searchOneRecruit(int recruitId) {
        RecruitDomain recruit = null;
        recruit = recruitUserDAO.selectOneRecruit(recruitId);
        return recruit;
    }
}
