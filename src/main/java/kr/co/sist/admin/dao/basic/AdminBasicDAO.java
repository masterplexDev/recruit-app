package kr.co.sist.admin.dao.basic;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.basic.AdminInfoDomain;
import kr.co.sist.admin.domain.basic.LoginDomain;
import kr.co.sist.admin.vo.basic.LoginVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class AdminBasicDAO {
    private final MyBatisConfig myBatis;

    public AdminBasicDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public LoginDomain selectLogin(LoginVO lVO) throws PersistenceException {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        LoginDomain ld = ss.selectOne("kr.co.sist.mapper.admin.basic.adminMapper.selectLogin", lVO);
        myBatis.closeHandler(ss);

        return ld;
    }// selectLogin

    public List<AdminInfoDomain> selectAdminList() {
        List<AdminInfoDomain> list = new ArrayList<AdminInfoDomain>();

        SqlSession ss = myBatis.getMyBatisHandler(false);

        list = ss.selectList("kr.co.sist.admin.basic.selectAdminList");

        myBatis.closeHandler(ss);

        return list;
    }// selectAdminList

}
