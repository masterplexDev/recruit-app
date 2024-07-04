package kr.co.sist.admin.dao.basic;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.basic.AdminInfoDomain;
import kr.co.sist.admin.domain.basic.AdminLoginDomain;
import kr.co.sist.admin.vo.basic.InsertAdminVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class AdminBasicDAO {
    private final MyBatisConfig myBatis;

    public AdminBasicDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public AdminLoginDomain selectLogin(String adminId) throws PersistenceException {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        AdminLoginDomain ld =
                ss.selectOne("kr.co.sist.mapper.admin.basic.adminMapper.selectLogin", adminId);
        myBatis.closeHandler(ss);

        return ld;
    }// selectLogin

    public List<AdminInfoDomain> selectAdminList() {
        List<AdminInfoDomain> list = new ArrayList<AdminInfoDomain>();

        SqlSession ss = myBatis.getMyBatisHandler(false);

        list = ss.selectList("kr.co.sist.mapper.admin.basic.adminMapper.selectAdminList");

        myBatis.closeHandler(ss);

        return list;
    }// selectAdminList

    public int insertAdmin(InsertAdminVO iVO) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        int cnt = ss.insert("kr.co.sist.mapper.admin.basic.adminMapper.insertAdmin", iVO);

        if (cnt > 0) {
            ss.commit();
        } else {
            ss.rollback();
        }

        return cnt;
    }// insertAdmin

}
