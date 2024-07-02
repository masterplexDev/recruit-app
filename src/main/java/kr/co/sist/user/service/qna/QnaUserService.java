package kr.co.sist.user.service.qna;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.qna.QnaUserDAO;
import kr.co.sist.user.domain.qna.UserQnaDomain;
import kr.co.sist.user.vo.qna.UserQnaVO;

@Service
public class QnaUserService {

    @Autowired(required = false)
    private QnaUserDAO qnaUserDAO;

    public QnaUserService(QnaUserDAO qnaUserDAO) {
        this.qnaUserDAO = qnaUserDAO;
    }

    public List<UserQnaDomain> searchMyQnaList() {
        List<UserQnaDomain> qnaList = null;
        qnaList = qnaUserDAO.selectMyQnas();
        return qnaList;
    }

    public UserQnaDomain searchOneQna(int qna_num) {
        UserQnaDomain oneQna = null;
        System.out.println("oneQna:------------" + oneQna);
        oneQna = qnaUserDAO.selectOneQna(qna_num);
        return oneQna;
    }

    public void addQna(UserQnaVO qVO) {
        qnaUserDAO.insertQna(qVO);
    }
}
