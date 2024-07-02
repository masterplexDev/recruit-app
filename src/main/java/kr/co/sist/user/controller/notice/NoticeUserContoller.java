package kr.co.sist.user.controller.notice;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.user.domain.notice.NoticeUserDomain;
import kr.co.sist.user.service.notice.NoticeUserService;

@Controller
public class NoticeUserContoller {
    @Autowired(required = false)
    private NoticeUserService noticeUserService;

    public NoticeUserContoller(NoticeUserService noticeUserService) {
        this.noticeUserService = noticeUserService;
    }

    @GetMapping("/notice.do")
    public String searchNotices(Model model) {
        List<NoticeUserDomain> noticeList = noticeUserService.searchNotices();
        model.addAttribute("noticeList", noticeList);
        return "notice";
    }
}

