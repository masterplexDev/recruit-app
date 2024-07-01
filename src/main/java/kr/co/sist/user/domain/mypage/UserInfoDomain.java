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
public class UserInfoDomain {
    private String userId;
    private String name;
    private String gender;
    private String phone;
    private String tel;
}
