package kr.co.sist.user.controller.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.user.domain.notice.NoticeUserDomain;
import kr.co.sist.user.service.notice.NoticeUserService;
import kr.co.sist.user.vo.notice.NoticeUserVO;

@Controller
public class NoticeUserContoller {
    @Autowired(required = false)
    private NoticeUserService noticeUserService;

    public NoticeUserContoller(NoticeUserService noticeUserService) {
        this.noticeUserService = noticeUserService;
    }

    // @ResponseBody
    // @GetMapping("/notice/notices.do")
    // public String getNotices(@RequestParam(value = "category", required = false) String category,
    // Model model) {
    // List<NoticeUserDomain> noticeList;
    // if (category != null && !category.equals("전체")) {
    // noticeList = noticeUserService.searchNoticesByCategory(category);
    // } else {
    // noticeList = noticeUserService.searchNotices();
    // }
    //
    // model.addAttribute("noticeList", noticeList);
    // return "notice/notices";
    // }

    @GetMapping("/notice/notices.do")
    public String searchNotices(Model model) {
        List<NoticeUserDomain> noticeList = noticeUserService.searchNotices();
        model.addAttribute("noticeList", noticeList);
        return "/notice/notices";
    } // 공지사항 리스트 불러오기

    // @GetMapping("/notice/notices.do")
    // public String searchNoticesBtCategory(@RequestParam("category") String category, Model
    // model)
    // {
    // List<NoticeUserDomain> noticeList = noticeUserService.searchNoticesByCategory(category);
    // model.addAttribute("noticeList", noticeList);
    // return "notice/notices";
    // }

    @GetMapping("/notice/noticesByCategory.do")
    @ResponseBody
    public Map<String, Object> getNoticesByCategory(@RequestParam("category") String category) {
        System.out.println("-----------------" + category);
        List<NoticeUserDomain> noticeList = noticeUserService.searchNoticesByCategory(category);
        System.out.println("---------????--------" + noticeList);
        Map<String, Object> response = new HashMap<>();
        response.put("noticeList", noticeList);
        return response;
    }



    @GetMapping("/notice/detail.do")
    public String searchOneNotice(NoticeUserVO nVO, Model model) {
        int notice_num = nVO.getNotice_num();
        NoticeUserDomain noticeDetail = noticeUserService.searchOneNotice(notice_num);
        model.addAttribute("noticeDetail", noticeDetail);
        return "notice/detail";
    } // 공시사항 세부조회

}

