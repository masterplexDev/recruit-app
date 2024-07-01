package kr.co.sist.admin.vo.recruit;

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
public class SearchVO {
    private int id;
    private int category;
    private String keyword;
    private Date inputDateStart;
    private Date inputDateEnd;
    private Date endDateStart;
    private Date endDateEnd;
    private String career;
    private String employmentType;
    private int startNum;
    private int endNum;
}
