package kr.co.sist.vo.companyinfo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class SearchVO {
  private String field, keyword;
  private String currentPage;
  private int startNum, endNum;
  private int avgSal, revenue;
  private String companyCode, companyName, description, logo, companyImg, businessNumber, addr, ceoName, companyClassification;
  private Date inputDate;
  private String historyContent, welfareContent;
  private Date baseDate;
  private String category;
}