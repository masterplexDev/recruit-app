package kr.co.sist.admin.service.qna;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.qna.QnaAdminDAO;
import kr.co.sist.admin.domain.qna.QnaDomain;

@Service
public class QnaAdminService {
    private QnaAdminDAO qnaAdminDAO;

    public QnaAdminService(QnaAdminDAO qnaAdminDAO) {
        this.qnaAdminDAO = qnaAdminDAO;
    }

    public List<QnaDomain> searchQnas() {
        List<QnaDomain> qnas = new ArrayList<QnaDomain>();
        qnas = qnaAdminDAO.test();
        return qnas;
    }
}
