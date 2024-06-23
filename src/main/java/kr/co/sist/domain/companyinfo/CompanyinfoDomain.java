package kr.co.sist.domain.companyinfo;

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
public class CompanyinfoDomain {
    private int avg_sal, revenue, headcount;
    private String company_code, company_name, description, logo, company_img, business_number, addr, ceo_name, company_classification;
    private Date input_date;
}
