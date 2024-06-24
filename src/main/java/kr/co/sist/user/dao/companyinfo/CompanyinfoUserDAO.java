package kr.co.sist.user.dao.companyinfo;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.domain.companyinfo.SearchDomain;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class CompanyinfoUserDAO {

    @Autowired(required=false)
    private MyBatisConfig mbConfig;

    public List<SearchDomain> selectAllCompanyinfo()throws PersistenceException{
        System.out.println("이건 다오야");
        SqlSession ss=mbConfig.getMyBatisHandler(false);
        List<SearchDomain> list= new ArrayList<SearchDomain>();
        list=ss.selectList("kr.co.sist.user.companyinfo.selectAllCompanyinfo");
        mbConfig.closeHandler(ss);
        System.out.println("값 잘 받아옴?");
        return list;
    }
    
//    public static void main(String[] args) {
//        CompanyinfoUserDAO ciuDAO=new CompanyinfoUserDAO();
//        List<CompanyinfoDomain> list = ciuDAO.selectAllCompanyinfo();
//        System.out.println(list);
//      }
}
