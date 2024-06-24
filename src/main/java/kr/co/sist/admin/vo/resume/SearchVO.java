package kr.co.sist.admin.vo.resume;

import java.time.LocalDate;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class SearchVO {
    private int recruitId;
    private String name;
    private String title;
    private String keyword;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startApplyDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endApplyDate;
    private String career;
    private String endSchool;
    private String addr;
    private int startNum;
    private int endNum;
}
