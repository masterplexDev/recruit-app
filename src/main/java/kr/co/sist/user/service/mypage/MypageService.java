package kr.co.sist.user.service.mypage;

import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.basic.UserBasicDAO;
import kr.co.sist.user.dao.mypage.MypageDAO;
import kr.co.sist.user.domain.mypage.QuestResultDomain;
import kr.co.sist.user.domain.mypage.UserInfoDomain;
import kr.co.sist.user.vo.basic.UpdatePassVO;
import kr.co.sist.user.vo.mypage.QuestionVO;
import kr.co.sist.user.vo.mypage.UpdateUserVO;

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
        UserInfoDomain userInfo = mDAO.selectUserInfo(userId);

        return userInfo;
    }

    public String searchChkPass(String userId) {
        String password = mDAO.selectChkPass(userId);

        return password;
    }

    public UserInfoDomain searchModifyInfo(String userId) {
        UserInfoDomain userInfo = mDAO.selectUserInfo(userId);

        String formatTel = replaceDash(userInfo.getTel());
        String formatPhone = replaceDash(userInfo.getPhone());

        userInfo.setTel(formatTel);
        userInfo.setPhone(formatPhone);

        return userInfo;
    }

    public int modifyUserInfo(UpdateUserVO uVO) {

        String formatTel = formatNumber(uVO.getTel());
        String formatPhone = formatNumber(uVO.getPhone());

        uVO.setTel(formatTel);
        uVO.setPhone(formatPhone);

        int cnt = mDAO.updateUserInfo(uVO);

        return cnt;
    }

    public QuestResultDomain certificationQuest(QuestionVO qVO) {
        QuestResultDomain qrd = mDAO.selectChkQuestion(qVO);

        return qrd;
    }

    public String replaceDash(String phoneNumber) {
        return phoneNumber.replace("-", "");
    }

    public String formatNumber(String phoneNumber) {
        String formatNum = phoneNumber.replaceFirst("(\\d{3})(\\d{3,4})(\\d{4})", "$1-$2-$3");
        return formatNum;
    }

}
