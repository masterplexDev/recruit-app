package kr.co.sist.admin.service.admin;

import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.admin.AdminManageDAO;
import kr.co.sist.admin.vo.admin.LoginVO;

@Service
public class AdminManageService {
    private final AdminManageDAO amDAO;

    public AdminManageService(AdminManageDAO amDAO) {
        this.amDAO = amDAO;
    }

    public String adminLogin(LoginVO lVO) {
        String adminId = "";
        adminId = amDAO.selectLogin(lVO);

        return adminId;
    }

}
