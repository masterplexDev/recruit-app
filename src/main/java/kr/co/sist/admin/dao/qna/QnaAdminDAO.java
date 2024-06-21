package kr.co.sist.admin.dao.qna;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import kr.co.sist.admin.domain.qna.QnaDomain;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class QnaAdminDAO {
    private MyBatisConfig myBatis;

    public QnaAdminDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<QnaDomain> selectNewQnas() {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<QnaDomain> qnas = new ArrayList<QnaDomain>();
        qnas = session.selectList("kr.co.sist.qna.admin.selectNewQnas");
        return qnas;
    }
}
