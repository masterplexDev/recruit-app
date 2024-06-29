package kr.co.sist.user.controller.qna;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.user.domain.qna.UserQnaDomain;
import kr.co.sist.user.service.qna.QnaUserService;

@Controller
public class QnaUserController {
    @Autowired(required = false)
    private QnaUserService qnaUserService;

    public QnaUserController(QnaUserService qnaUserService) {
        this.qnaUserService = qnaUserService;
    }

    @GetMapping("/user/mypage/qna/mypageQNAList.do")
    public String searchMyQnaList(Model model) {
        List<UserQnaDomain> qnaList = qnaUserService.searchMyQnaList();
        model.addAttribute("qnaList", qnaList);
        return "user/mypage/qna/mypageQNAList";
    }

    @GetMapping("/user/mypage/qna/mypageQNADetail.do")
    public String searchMyQna() {
        return "user/mypage/qna/mypageQNADetail.do";
    }
}
