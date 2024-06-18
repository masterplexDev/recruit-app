package kr.co.sist.admin.service.recruit;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.recruit.RecruitAdminDAO;
import kr.co.sist.admin.domain.recruit.RecruitDomain;

@Service
public class RecruitAdminService {
    private final RecruitAdminDAO recruitAdminDAO;

    public RecruitAdminService(RecruitAdminDAO recruitAdminDAO) {
        this.recruitAdminDAO = recruitAdminDAO;
    }

    public List<RecruitDomain> searchRecruits() {
        List<RecruitDomain> recruits = new ArrayList<RecruitDomain>();
        recruits = recruitAdminDAO.test();
        return recruits;
    }
}
