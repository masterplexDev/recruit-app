package kr.co.sist.admin.domain.recruit;

import java.sql.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
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
public class RecruitDomain {
    private int id;
    private String companyCode;
    private String companyName;
    private String position;
    private String title;
    private String content;
    private int peopleNum;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date inputDate;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date endDate;
    private String hireCategory;
    private String workDay;
    private String workTime;
    private String workPlace;
    private String salaryCategory;
    private int salary;
    private String careerStandard;
    private String careerStandardSum;
    private String eduStandard;

    // for company info
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd", timezone = "Asia/Seoul")
    private Date establishDate;
    private int companyPeopleNum;
}
