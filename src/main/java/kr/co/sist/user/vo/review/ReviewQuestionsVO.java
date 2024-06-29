package kr.co.sist.user.vo.review;

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
public class ReviewQuestionsVO {
    private int reviewNum;          // 리뷰 번호
    private int question1;          // 질문 1
    private int question2;          // 질문 2
    private int question3;          // 질문 3
    private int question4;          // 질문 4
}