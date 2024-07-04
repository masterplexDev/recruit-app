package kr.co.sist.admin.vo.review;

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
    private int reviewNum;
    private String userId;
    private String author;
    private String title;
    private String content;
    private String inputDate;
    private int recommend;
    private String deleteFlag;
}