package kr.co.sist.admin.service.admin;

import java.util.List;
import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.admin.AdminManageDAO;
import kr.co.sist.admin.domain.admin.AdminInfoDomain;
import kr.co.sist.admin.domain.admin.LoginDomain;
import kr.co.sist.admin.vo.admin.LoginVO;

@Service
public class AdminManageService {
    private final AdminManageDAO amDAO;

    public AdminManageService(AdminManageDAO amDAO) {
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
