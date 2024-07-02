package kr.co.sist.user.dao.notice;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;
import kr.co.sist.user.domain.notice.NoticeUserDomain;

@Component
public class NoticeUserDAO {
    @Autowired(required = false)
    private MyBatisConfig myBatis;

    public NoticeUserDAO(MyBatisConfig myConfig) {
        this.myBatis = myBatis;
    }

    public List<NoticeUserDomain> selectNotices() {
        SqlSession session = myBatis.getMyBatisHandler(false);
        List<NoticeUserDomain> noticeList =
                session.selectList("kr.co.sist.notice.user.selectNotices");
        myBatis.closeHandler(session);
        return noticeList;
    }
}
