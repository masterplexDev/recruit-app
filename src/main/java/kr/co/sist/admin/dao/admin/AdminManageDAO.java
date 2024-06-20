package kr.co.sist.admin.dao.admin;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.admin.AdminInfoDomain;
import kr.co.sist.admin.domain.admin.LoginDomain;
import kr.co.sist.admin.vo.admin.LoginVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class AdminManageDAO {
    private final MyBatisConfig myBatis;

    public AdminManageDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }



    public LoginDomain selectLogin(LoginVO lVO) throws PersistenceException {
        String adminId = "";
        SqlSession ss = myBatis.getMyBatisHandler(false);

        LoginDomain ld = ss.selectOne("kr.co.sist.admin.admin.selectLogin", lVO);
        System.out.println(ld.getAdminId());
        myBatis.closeHandler(ss);

        return ld;
    }// selectLogin

    public List<AdminInfoDomain> selectAdminList() {
        List<AdminInfoDomain> list = new ArrayList<AdminInfoDomain>();

        SqlSession ss = myBatis.getMyBatisHandler(false);

        list = ss.selectList("kr.co.sist.admin.admin.selectAdminList");

        myBatis.closeHandler(ss);

        return list;
    }// selectAdminList

}
