package kr.co.sist.user.vo.review;

import java.util.Date;
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

public class ReviewVO {
    private String title;
    private String companyName;
    private String companyImage;
    private String userId;
    private Date inputDate;
    private String recommend;
    
}