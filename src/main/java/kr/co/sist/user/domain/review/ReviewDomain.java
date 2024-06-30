package kr.co.sist.user.domain.review;

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
public class ReviewDomain {
    private String companyCode;  // 기업 코드
    private String userId;       // 사용자 ID
    private String title;        // 리뷰 제목
    private String content;      // 리뷰 내용
}

