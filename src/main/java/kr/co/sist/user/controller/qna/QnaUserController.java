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

    @GetMapping("/user/mypage/qna/mypageQnaList.do")
    public String searchMyQnaList(Model model) {
        List<UserQnaDomain> mypageQnaList = qnaUserService.searchMyQnaList();
        model.addAttribute("mypageQnaList", mypageQnaList);
        return "user/mypage/qna/mypageQnaList";
    }
}
