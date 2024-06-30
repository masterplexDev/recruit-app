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
public class RecruitAdminVO {
    private int id;
    private String company;
    private String position;
    private String title;
    private String content;
    private int peopleNum;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endDate;
    private String hireCategory;
    private String workDay;
    private String workTime;
    private String workPlace;
    private String salaryCategory;
    private int salary;
    private String careerStandard;
    private int carrerStandardSum;
    private String eduStandard;
}
