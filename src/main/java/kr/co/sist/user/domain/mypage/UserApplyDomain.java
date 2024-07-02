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
public class UserApplyDomain {
    private String companyName;
    private String title;
    private Date applyDate;
    private String progressState;
}
