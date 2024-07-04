package kr.co.sist.admin.service.basic;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.basic.AdminBasicDAO;
import kr.co.sist.admin.domain.basic.AdminInfoDomain;
import kr.co.sist.admin.domain.basic.AdminLoginDomain;
import kr.co.sist.admin.vo.basic.InsertAdminVO;

@Service
public class AdminBasicService {
    private final AdminBasicDAO amDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public AdminBasicService(AdminBasicDAO amDAO) {
        this.amDAO = amDAO;
    }

    public AdminLoginDomain adminLogin(String adminId) {

        AdminLoginDomain ld = amDAO.selectLogin(adminId);

        return ld;
    }

    public List<AdminInfoDomain> searchAdminList() {
        List<AdminInfoDomain> list = amDAO.selectAdminList();

        return list;
    }

    public int addAdmin(InsertAdminVO iVO) {

        String password = iVO.getPassword();
        String cipherPass = passwordEncoder.encode(password);
        iVO.setPassword(password);

        int cnt = amDAO.insertAdmin(iVO);

        return cnt;
    }

}
