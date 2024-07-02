package kr.co.sist.user.dao.mypage;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.domain.mypage.QuestResultDomain;
import kr.co.sist.user.domain.mypage.UserApplyDomain;
import kr.co.sist.user.domain.mypage.UserInfoDomain;
import kr.co.sist.user.vo.basic.UpdatePassVO;
import kr.co.sist.user.vo.mypage.QuestionVO;
import kr.co.sist.user.vo.mypage.UpdateUserVO;

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

    public UserInfoDomain selectUserInfo(String userId) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        UserInfoDomain uid =
                ss.selectOne("kr.co.sist.mapper.user.mypage.mypageMapper.selectUserInfo", userId);

        myBatis.closeHandler(ss);

        return uid;
    }


    public String selectChkPass(String userId) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        String password =
                ss.selectOne("kr.co.sist.mapper.user.mypage.mypageMapper.selectChkPass", userId);

        myBatis.closeHandler(ss);

        return password;
    }

    public int updateUserInfo(UpdateUserVO uVO) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        int cnt = ss.update("kr.co.sist.mapper.user.mypage.mypageMapper.updateUserInfo", uVO);

        if (cnt > 0) {
            ss.commit();
        } else {
            ss.rollback();
        }

        myBatis.closeHandler(ss);

        return cnt;
    }

    public QuestResultDomain selectChkQuestion(QuestionVO qVO) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        QuestResultDomain qrd =
                ss.selectOne("kr.co.sist.mapper.user.mypage.mypageMapper.selectChkQuestion", qVO);

        myBatis.closeHandler(ss);

        return qrd;
    }

    public List<UserApplyDomain> selectUserApply(String userId) {
        SqlSession ss = myBatis.getMyBatisHandler(false);

        List<UserApplyDomain> applyList =
                ss.selectList("kr.co.sist.mapper.user.mypage.mypageMapper.selectApply", userId);

        myBatis.closeHandler(ss);

        return applyList;
    }

}
