package kr.co.sist.user.dao.qna;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.domain.qna.UserQnaDomain;

@Component
public class QnaUserDAO {
    @Autowired(required = false)
    private MyBatisConfig myBatis;

    public QnaUserDAO(MyBatisConfig myBatis) {
        this.myBatis = myBatis;
    }

    public List<UserQnaDomain> selectMyQnas() {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<UserQnaDomain> qnaList = null;
        qnaList = session.selectList("kr.co.sist.qna.user.selectMyQnas");
        return qnaList;
    }
}
