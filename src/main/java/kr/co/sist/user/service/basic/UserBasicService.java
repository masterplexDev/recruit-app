package kr.co.sist.user.service.basic;

import java.util.List;
import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.basic.UserBasicDAO;
import kr.co.sist.user.domain.basic.LoginDomain;
import kr.co.sist.user.domain.basic.QuestionDomain;
import kr.co.sist.user.vo.basic.FindMailVO;
import kr.co.sist.user.vo.basic.LoginVO;
import kr.co.sist.user.vo.signup.Signup2VO;
import kr.co.sist.user.vo.signup.SignupVO;

@Service
public class UserBasicService {
    private final UserBasicDAO ubDAO;

    public UserBasicService(UserBasicDAO ubDAO) {
        this.ubDAO = ubDAO;
    }

    public LoginDomain userLogin(LoginVO lVO) {
        LoginDomain ld = ubDAO.selectLogin(lVO);

        return ld;
    }

    public String checkDuplicationId(String userId) {
        String checkId = ubDAO.selectDuplicationId(userId);

        return checkId;
    }

    public List<QuestionDomain> searchPasswordQList() {
        List<QuestionDomain> list = ubDAO.selectPasswordQList();

        return list;
    }

    public int addUser(SignupVO sVO, Signup2VO s2VO) {

        int cnt = ubDAO.insertUser(sVO, s2VO);

        return cnt;
    }

    public String findUserId(FindMailVO fmVO) {
        String userId = ubDAO.selectUserId(fmVO);

        return userId;
    }

}
