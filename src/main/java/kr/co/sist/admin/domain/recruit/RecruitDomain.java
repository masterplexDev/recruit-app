package kr.co.sist.admin.domain.recruit;

import java.sql.Date;
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
    private String company;
    private String position;
    private String title;
    private String content;
    private int peopleNum;
    private Date endDate;
    private String hireCategory;
    private String workDay;
    private String workTime;
    private String workPlace;
    private String salaryCategory;
    private int salary;
    private String careerStandard;
    private int careerStandardSum;
    private String eduStandard;
}
