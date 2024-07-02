package kr.co.sist.user.domain.mypage;

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
public class UserReviewDomain {
    private int reviewNum;
    private String companyName;
    private String title;
    private Date inputDate;
    private String content;

}
