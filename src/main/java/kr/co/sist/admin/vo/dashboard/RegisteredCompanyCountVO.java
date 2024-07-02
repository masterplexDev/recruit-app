package kr.co.sist.admin.vo.dashboard;

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
public class RegisteredCompanyCountVO {
    private String registrationDate;
    private int companyCount;
}
