package kr.co.sist.admin.controller.qna;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
    public String searchNewQnas(Model model) {
        List<QnaDomain> newQnas = qnaAdminService.searchNewQnas();
        model.addAttribute("newQnas", newQnas);
        return "new_qnas";
    } // 새 문의사항 리스트 조회

    @GetMapping("/manage/new_detail.do")
    public String searchOneNewQna(QnaVO qVO, Model model) {
        int qna_num = qVO.getQna_num();
        // System.out.println(qVO.toString());
        QnaDomain newDetail = qnaAdminService.searchOneNewQna(qna_num);

        System.out.println("----------" + qVO);
        model.addAttribute("newDetail", newDetail);
        return "new_detail";
    } // 새 문의사항 상세조회

    @GetMapping("/manage/qnas.do")
    public String searchOldQnas(Model model) {
        List<QnaDomain> oldQnas = qnaAdminService.searchOldQnas();
        model.addAttribute("oldQnas", oldQnas);
        return "qnas";
    } // 답변 완료된 문의사항 리스트 조회

    @GetMapping("/manage/old_detail.do")
    public String searchOneOldQna(QnaVO qVO, Model model) {
        int qna_num = qVO.getQna_num();
        // System.out.println(qVO.toString());
        QnaDomain oldDetail = qnaAdminService.searchOneOldQna(qna_num);
        model.addAttribute("oldDetail", oldDetail);

        System.out.println("------" + oldDetail);
        return "old_detail";
    } // 답변 완료된 문의사항 상세조회

    // @PostMapping("/manage/qnaAnswer.do")
    // public String addQnaAnswer(@RequestParam("user_id") int user_id,
    // @RequestParam("qnaNum") int qna_num, @RequestParam("content") String content,
    // Model model) {
    // QnaVO qnaAnswer = qnaAdminService.addQnaAnswer(user_id, qna_num, content);
    // model.addAttribute("qnaAnswer", qnaAnswer);
    // return "qnaAnswer";
    // }

    @PostMapping("/manage/qnas.do")
    public String addQnaAnswer(QnaVO qVO, Model model) {
        int result = qnaAdminService.addQnaAnswer(qVO);
        if (result == 1) {
            int qna_num = qVO.getQna_num();
            int result2 = qnaAdminService.updateQnaFlag(qna_num);
            System.out.println("여기!!!!!!!" + qna_num);
            if (result2 == 1) {
                System.out.println("여기????");
            }
        }
        model.addAttribute("qnaAnswer", qVO);
        return "qnas";
    }

}
