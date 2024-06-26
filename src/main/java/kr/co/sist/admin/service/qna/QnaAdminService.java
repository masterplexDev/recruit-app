package kr.co.sist.admin.service.qna;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.admin.dao.qna.QnaAdminDAO;
import kr.co.sist.admin.domain.qna.QnaDomain;
import kr.co.sist.admin.vo.qna.QnaVO;

@Service
public class QnaAdminService {

    @Autowired(required = false)
    private QnaAdminDAO qnaAdminDAO;

    public QnaAdminService(QnaAdminDAO qnaAdminDAO) {
        this.qnaAdminDAO = qnaAdminDAO;
    }

    public List<QnaDomain> searchNewQnas() {
        List<QnaDomain> qnas = null;
        qnas = qnaAdminDAO.selectNewQnas();
        return qnas;
    }

    public QnaDomain searchOneNewQna(int qna_num) {
        QnaDomain oneQna = null;
        oneQna = qnaAdminDAO.selectOneNewQna(qna_num);
        return oneQna;
    }

    public List<QnaDomain> searchOldQnas() {
        List<QnaDomain> oldQnas = null;
        oldQnas = qnaAdminDAO.selectOldQnas();
        return oldQnas;
    }

    public QnaDomain searchOneOldQna(int qna_num) {
        QnaDomain oneOldQna = null;
        oneOldQna = qnaAdminDAO.selectOneOldQna(qna_num);
        return oneOldQna;
    }

    // public QnaVO addQnaAnswer(int user_id, int qna_num, String content) {
    // QnaVO qnaAnswer = null;
    // qnaAnswer = qnaAdminDAO.insertQnaAnswer(user_id, qna_num, content);
    // return qnaAnswer;
    // }

    public QnaVO addQnaAnswer(QnaVO qVO) {
        qnaAdminDAO.insertQnaAnswer(qVO);
        return qVO;
    }

}
