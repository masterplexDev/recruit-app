package kr.co.sist.admin.controller.qna;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.admin.domain.qna.QnaDomain;
import kr.co.sist.admin.service.qna.QnaAdminService;

@Controller
public class QnaAdminController {
    private QnaAdminService qnaAdminService;

    public QnaAdminController(QnaAdminService qnaAdminService) {
        this.qnaAdminService = qnaAdminService;
    }

    @GetMapping("/manage/qnas.do")
    public List<QnaDomain> searchQnas() {
        return qnaAdminService.searchQnas();
    }// searchQnas
}
