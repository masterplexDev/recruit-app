package kr.co.sist.user.vo.signup;

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
public class SignupVO {
    private String userId;
    private String name;
    private String phone;
    private String tel;
    private String password;
    private String gender;
    private Date birthDate;
    private String qnum;
    private String qanswer;
}
