package kr.co.sist.admin.vo.resume;

import java.sql.Date;
import org.springframework.format.annotation.DateTimeFormat;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class RecruitAdminVO {
    private int id;
    private String companyCode;
    private String companyName;
    private String position;
    private String title;
    private String content;
    private int headcount;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endDate;
    private String workType;
    private String workDay;
    private String workStartTime;
    private String workEndTime;
    private String workPlace;
    private String salaryType;
    private int salary;
    private String careerStandard;
    private int careerYears;
    private String eduStandard;
}
