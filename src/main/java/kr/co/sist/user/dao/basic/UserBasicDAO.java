package kr.co.sist.user.dao.basic;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.domain.basic.LoginDomain;
import kr.co.sist.user.vo.basic.LoginVO;

@Component
public class UserBasicDAO {
    private final MyBatisConfig myBatis;

    public UserBasicDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public LoginDomain selectLogin(LoginVO lVO) throws PersistenceException {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        LoginDomain ld =
                ss.selectOne("kr.co.sist.mapper.user.basic.userBasicMapper.selectLogin", lVO);
        myBatis.closeHandler(ss);

        return ld;
    }// selectLogin

}
