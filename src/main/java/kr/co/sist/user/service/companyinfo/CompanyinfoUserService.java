package kr.co.sist.user.service.companyinfo;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.domain.companyinfo.CompanyinfoDomain;
import kr.co.sist.user.dao.companyinfo.CompanyinfoUserDAO;

@Service
public class CompanyinfoUserService {
    private final CompanyinfoUserDAO companyinfoUserDAO;

    @Autowired(required = false)
    public CompanyinfoUserService(CompanyinfoUserDAO companyinfoUserDAO) {
        this.companyinfoUserDAO = companyinfoUserDAO;
    }

    public List<CompanyinfoDomain> searchAllCompanyinfo() {
        return companyinfoUserDAO.selectAllCompanyinfo();
    }

//    public RecruitDomain searchOneRecruit(int recruitId) {
//        RecruitDomain recruit = null;
//        recruit = companyinfoUserDAO.selectOneRecruit(recruitId);
//        return recruit;
//    }

}
