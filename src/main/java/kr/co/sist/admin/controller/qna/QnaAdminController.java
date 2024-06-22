package kr.co.sist.admin.controller.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import kr.co.sist.admin.service.qna.QnaAdminService;

@Controller
public class QnaAdminController {
    @Autowired(required = false)
    private QnaAdminService qnaAdminService;


    @GetMapping("/manage/new_qnas.do")
    public String searchNewQnas(Model model) {
        // public List<QnaDomain> searchNewQnas(Model model) {
        // List<String> qnaNewList = (List<String>) model.getAttribute("qnaNewList");
        //
        // if (qnaNewList != null) {
        // for (String qnaData : qnaNewList) {
        // }
        // }
        return "new_qnas";

        // return qnaAdminService.searchNewQnas();
    }// searchQnas
}
