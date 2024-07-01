package kr.co.sist.user.dao.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.vo.basic.UpdatePassVO;

@Component
public class MypageDAO {

    private final MyBatisConfig myBatis;

    public MypageDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public int updatePassword(UpdatePassVO upVO) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        int cnt = ss.update("kr.co.sist.mapper.user.basic.userBasicMapper.updatePassword", upVO);

        if (cnt > 0) {
            ss.commit();
        } else {
            ss.rollback();
        }

        myBatis.closeHandler(ss);

        return cnt;
    }

    public int updatePassFlag(String userId) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        int cnt = ss.update("kr.co.sist.mapper.user.mypage.mypageMapper.updatePassFlag", userId);

        if (cnt > 0) {
            ss.commit();
        } else {
            ss.rollback();
        }

        myBatis.closeHandler(ss);

        return cnt;
    }

}
