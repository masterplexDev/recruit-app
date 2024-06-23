package kr.co.sist.admin.domain.notice;

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
public class NoticeAdminDomain {
    private int noticeNum, views;
    private String category, title, content, adminId, modifier, blindFlag;
    private Date inputDate, updateDate;
}
