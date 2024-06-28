package kr.co.sist.admin.dao.qna;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.qna.QnaDomain;
import kr.co.sist.admin.vo.qna.QnaVO;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class QnaAdminDAO {
    @Autowired(required = false)
    private MyBatisConfig myBatis;

    public QnaAdminDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<QnaDomain> selectNewQnas() {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<QnaDomain> qnas = null;
        qnas = session.selectList("kr.co.sist.qna.admin.selectNewQnas");
        myBatis.closeHandler(session);
        return qnas;
    }

    public QnaDomain selectOneNewQna(int qna_num) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        QnaDomain newDetail = session.selectOne("kr.co.sist.qna.admin.selectOneNewQna", qna_num);
        myBatis.closeHandler(session);
        return newDetail;
    }

    public List<QnaDomain> selectOldQnas() {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<QnaDomain> oldQnas = null;
        oldQnas = session.selectList("kr.co.sist.qna.admin.selectOldQnas");
        myBatis.closeHandler(session);
        return oldQnas;
    }

    public QnaDomain selectOneOldQna(int qna_num) {
        SqlSession session = myBatis.getMyBatisHandler(false);
        QnaDomain oldDetail = session.selectOne("kr.co.sist.qna.admin.selectOneOldQna", qna_num);
        myBatis.closeHandler(session);
        return oldDetail;
    }


    // public QnaVO insertQnaAnswer(int user_id, int qna_num, String content)
    // throws PersistenceException {
    // SqlSession session = myBatis.getMyBatisHandler(true);
    // QnaVO qnaAnswer = null;
    //
    // Map<String, Object> param = new HashMap<>();
    // param.put("user_id", user_id);
    // param.put("qna_num", qna_num);
    // param.put("content", content);
    //
    // session.insert("kr.co.sist.qna.admin.insertQnaAnswer", param);
    // myBatis.closeHandler(session);
    // return qnaAnswer;
    // }

    public void insertQnaAnswer(QnaVO qVO) {
        SqlSession session = myBatis.getMyBatisHandler(true);
        System.out.println(qVO);
        session.insert("kr.co.sist.qna.admin.insertQnaAnswer", qVO);
        myBatis.closeHandler(session);
    }

    public void updateQnaFlag(int qna_num) {
        SqlSession session = myBatis.getMyBatisHandler(true);
        session.update("kr.co.sist.qna.admin.updateQnaFlag", qna_num);
        myBatis.closeHandler(session);
    }

}
