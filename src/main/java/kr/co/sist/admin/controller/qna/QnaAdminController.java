package kr.co.sist.admin.controller.qna;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.admin.domain.qna.QnaDomain;
import kr.co.sist.admin.service.qna.QnaAdminService;
import kr.co.sist.admin.vo.qna.QnaVO;

@Controller
public class QnaAdminController {
    @Autowired(required = false)
    private QnaAdminService qnaAdminService;

    public QnaAdminController(QnaAdminService qnaAdminService) {
        this.qnaAdminService = qnaAdminService;
    }

    @GetMapping("/manage/new_qnas.do")
    public String searchNewQnas(QnaVO qVO, Model model) {
        List<QnaDomain> newQnas = qnaAdminService.searchNewQnas();
        model.addAttribute("newQnas", newQnas);
        return "new_qnas";
    }

    @GetMapping("/manage/new_detail.do")
    public String searchOneNewQna(QnaVO qVO, Model model) {
        int qna_num = qVO.getQna_num();
        System.out.println(qVO.toString());
        QnaDomain newDetail = qnaAdminService.searchOneNewQna(qna_num);
        model.addAttribute("newDetail", newDetail);
        return "new_detail";
    }
}
