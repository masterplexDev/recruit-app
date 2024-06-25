package kr.co.sist.user.service.companyinfo;

import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.domain.companyinfo.SearchDomain;
import kr.co.sist.user.dao.companyinfo.CompanyinfoUserDAO;

@Service
public class CompanyinfoUserService {
    
    @Autowired(required=false)
    private CompanyinfoUserDAO companyinfoUserDAO;
//    private final CompanyinfoUserDAO companyinfoUserDAO;
//
//    @Autowired(required = false)
//    public CompanyinfoUserService(CompanyinfoUserDAO companyinfoUserDAO) {
//        this.companyinfoUserDAO = companyinfoUserDAO;
//    }

    public List<SearchDomain> searchAllCompanyinfo() {
        System.out.println("이건 서비스야");
        
        List<SearchDomain> list=null;
        list=companyinfoUserDAO.selectAllCompanyinfo();
        
        return list;
//        return companyinfoUserDAO.selectAllCompanyinfo();
    }
    
    public List<SearchDomain> searchCompanyinfoDetail(String companyCode){
        List<SearchDomain> list=null;
        try {
            list=companyinfoUserDAO.selectCompanyinfoDetail(companyCode);
            
        }catch(PersistenceException pe) {
            pe.printStackTrace();
        }
        return list;
    }

//    public RecruitDomain searchOneRecruit(int recruitId) {
//        RecruitDomain recruit = null;
//        recruit = companyinfoUserDAO.selectOneRecruit(recruitId);
//        return recruit;
//    }

}
