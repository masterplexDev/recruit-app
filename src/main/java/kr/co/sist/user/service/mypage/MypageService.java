package kr.co.sist.user.service.mypage;

import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.basic.UserBasicDAO;
import kr.co.sist.user.dao.mypage.MypageDAO;
import kr.co.sist.user.domain.mypage.UserInfoDomain;
import kr.co.sist.user.vo.basic.UpdatePassVO;

@Service
public class MypageService {
    private UserBasicDAO ubDAO;
    private MypageDAO mDAO;

    public MypageService(UserBasicDAO ubDAO, MypageDAO mDAO) {
        this.ubDAO = ubDAO;
        this.mDAO = mDAO;
    }

    public int modifyPassword(UpdatePassVO upVO) {
        int cnt = ubDAO.updatePassword(upVO);

        return cnt;
    }

    public int modifyPassFlag(String userId) {
        int cnt = mDAO.updatePassFlag(userId);

        return cnt;
    }

    public UserInfoDomain searchUserInfo(String userId) {
        UserInfoDomain uid = mDAO.selectUserInfo(userId);

        return uid;
    }

    public String searchChkPass(String userId) {
        String password = mDAO.selectChkPass(userId);

        return password;
    }

}
