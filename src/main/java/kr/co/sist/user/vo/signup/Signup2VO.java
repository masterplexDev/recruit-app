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
public class Signup2VO {
    private String gender;
    private Date birthDate;
    private String qNum;
    private String qAnswer;
}
