package kr.co.sist.admin.dao.qna;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.qna.QnaDomain;
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
        return newDetail;
    }
    // public static void main (String[] args) {
    // QnaAdminDAO qd=new QnaAdminDAO();
    // }

}
