package kr.co.sist.admin.dao.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.vo.admin.LoginVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class AdminManageDAO {
    private final MyBatisConfig myBatis;

    public AdminManageDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }



    public String selectLogin(LoginVO lVO) {
        String adminId = "";
        SqlSession ss = myBatis.getMyBatisHandler(false);

        adminId = ss.selectOne("kr.co.sist.admin.admin.selectLogin", lVO);
        System.out.println(adminId);
        myBatis.closeHandler(ss);

        return adminId;
    }// selectLogin

}
