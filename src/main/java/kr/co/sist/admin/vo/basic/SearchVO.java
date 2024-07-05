package kr.co.sist.admin.vo.basic;

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
    private String adminId;
    private String position;
    private String authority;
    private String keyword;
    private int startNum;
    private int endNum;
}
