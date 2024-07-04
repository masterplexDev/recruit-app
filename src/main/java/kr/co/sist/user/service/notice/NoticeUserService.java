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

    // public List<NoticeUserDomain> searchNoticesByCategory(String category) {
    // System.out.println("============="+category);
    // List<NoticeUserDomain> noticeList = null;
    // noticeList = noticeUserDAO.selectNoticesByCategory(category);
    // System.out.println("============="+category);
    // return noticeList;
    // }

    public List<NoticeUserDomain> searchNoticesByCategory(String category) {
        System.out.println("=============" + category);
        List<NoticeUserDomain> result = noticeUserDAO.selectNoticesByCategory(category);
        // noticeList = noticeUserDAO.selectNoticesByCategory(category);
        System.out.println("=====?????????========" + result);
        return result;
    }



    public NoticeUserDomain searchOneNotice(int notice_num) {
        NoticeUserDomain noticeDetail = null;
        noticeDetail = noticeUserDAO.selectOneNotice(notice_num);
        return noticeDetail;
    }
}
