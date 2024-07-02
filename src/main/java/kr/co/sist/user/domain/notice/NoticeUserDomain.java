package kr.co.sist.user.domain.notice;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class NoticeUserDomain {
    private int notice_num, views;
    private String category, title, content, admin_id, modifier, blind_flag;
    private Date input_date, update_date;
}
