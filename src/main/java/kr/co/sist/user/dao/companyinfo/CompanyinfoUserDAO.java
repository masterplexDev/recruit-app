package kr.co.sist.user.dao.companyinfo;

import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.domain.companyinfo.CompanyinfoDomain;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class CompanyinfoUserDAO {

    @Autowired(required=false)
    private MyBatisConfig mbConfig;

    public List<CompanyinfoDomain> selectAllCompanyinfo()throws PersistenceException{
        List<CompanyinfoDomain> list=null;
        SqlSession ss=mbConfig.getMyBatisHandler(false);
        list=ss.selectList("kr.co.sist.user.companyinfo.selectAllCompanyinfo");
        mbConfig.closeHandler(ss);
        
        return list;
    }
    
//    public static void main(String[] args) {
//        CompanyinfoUserDAO ciuDAO=new CompanyinfoUserDAO();
//        List<CompanyinfoDomain> list = ciuDAO.selectAllCompanyinfo();
//        System.out.println(list);
//      }
}
