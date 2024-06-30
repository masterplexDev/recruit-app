package kr.co.sist.admin.service.recruit;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.recruit.RecruitAdminDAO;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.admin.vo.recruit.SearchVO;

@Service
public class RecruitAdminService {
    private final RecruitAdminDAO recruitAdminDAO;

    @Autowired(required = false)
    public RecruitAdminService(RecruitAdminDAO recruitAdminDAO) {
        this.recruitAdminDAO = recruitAdminDAO;
    }

    public List<RecruitDomain> searchRecruits(SearchVO searchVO) {
        List<RecruitDomain> recruits = new ArrayList<RecruitDomain>();
        recruits = recruitAdminDAO.selectRecruits(searchVO);
        return recruits;
    }

    public RecruitDomain searchOneRecruit(int recruitNum) {
        RecruitDomain recruit = null;
        recruit = recruitAdminDAO.selectOneRecruit(recruitNum);
        return recruit;
    }

    public boolean deleteRecruit(int recruitNum) {
        return recruitAdminDAO.deleteRecruit(recruitNum);
    }
}
