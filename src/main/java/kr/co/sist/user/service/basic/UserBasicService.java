package kr.co.sist.user.service.basic;

import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.basic.UserBasicDAO;
import kr.co.sist.user.domain.basic.LoginDomain;
import kr.co.sist.user.vo.basic.LoginVO;

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

}
