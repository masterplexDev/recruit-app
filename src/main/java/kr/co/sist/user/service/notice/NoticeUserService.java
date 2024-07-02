package kr.co.sist.user.service.notice;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.sist.user.dao.notice.NoticeUserDAO;
import kr.co.sist.user.domain.notice.NoticeUserDomain;

@Service
public class NoticeUserService {

    @Autowired(required = false)
    private NoticeUserDAO noticeUserDAO;

    public NoticeUserService(NoticeUserDAO noticeUserDAO) {
        this.noticeUserDAO = noticeUserDAO;
    }

    public List<NoticeUserDomain> searchNotices() {
        List<NoticeUserDomain> notieceList = null;
        notieceList = noticeUserDAO.selectNotices();
        return notieceList;
    }
}
