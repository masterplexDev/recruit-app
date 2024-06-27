package kr.co.sist.user.domain.review;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewSurveyDomain {
    private int reviewNum;
    private String userId;
    private String companyCode;
    private int question1;
    private int question2;
    private int question3;
    private int question4;
}