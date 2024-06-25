package kr.co.sist.admin.service.basic;

import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.basic.AdminBasicDAO;
import kr.co.sist.admin.domain.basic.AdminInfoDomain;
import kr.co.sist.admin.domain.basic.LoginDomain;
import kr.co.sist.admin.vo.basic.LoginVO;

@Service
public class AdminBasicService {
    private final AdminBasicDAO amDAO;

    public AdminBasicService(AdminBasicDAO amDAO) {
        this.amDAO = amDAO;
    }

    public LoginDomain adminLogin(LoginVO lVO) throws PersistenceException {
        LoginDomain ld = amDAO.selectLogin(lVO);

        return ld;
    }

    public List<AdminInfoDomain> searchAdminList() {
        List<AdminInfoDomain> list = amDAO.selectAdminList();

        return list;
    }

}
