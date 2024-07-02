package kr.co.sist.user.domain.mypage;

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
public class UserCareerDomain {
    private String logo;
    private String companyName;
    private int revenue;
    private int headcount;
}
