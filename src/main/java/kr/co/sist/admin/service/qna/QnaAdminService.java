package kr.co.sist.admin.service.qna;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.qna.QnaAdminDAO;
import kr.co.sist.admin.domain.qna.QnaDomain;

@Service
public class QnaAdminService {
    @Autowired(required = false)
    private QnaAdminDAO qnaAdminDAO;

    public QnaAdminService(QnaAdminDAO qnaAdminDAO) {
        this.qnaAdminDAO = qnaAdminDAO;
    }

    public List<QnaDomain> searchNewQnas() {
        List<QnaDomain> qnas = new ArrayList<QnaDomain>();
        qnas = qnaAdminDAO.selectNewQnas();
        return qnas;
    }
}
