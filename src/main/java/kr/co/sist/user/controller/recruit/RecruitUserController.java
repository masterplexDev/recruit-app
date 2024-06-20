package kr.co.sist.user.controller.recruit;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.sist.admin.domain.recruit.RecruitDomain;
import kr.co.sist.user.service.recruit.RecruitUserService;
import kr.co.sist.user.vo.recruit.SearchVO;

@Controller
@ResponseBody
public class RecruitUserController {
    private final RecruitUserService recruitUserService;

    @Autowired(required = false)
    public RecruitUserController(RecruitUserService recruitUserService) {
        this.recruitUserService = recruitUserService;
    }

    @GetMapping("/recruits.do")
    public List<RecruitDomain> searchRecruits(@ModelAttribute SearchVO searchVO) {
        // System.out.println(searchVO.toString());
        return recruitUserService.searchRecruits(searchVO);
    }

    @GetMapping("/recruit.do")
    public RecruitDomain searchOneRecruit(@RequestParam("id") int recruitId) {
        return recruitUserService.searchOneRecruit(recruitId);
    }
}
