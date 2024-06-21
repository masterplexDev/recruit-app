package kr.co.sist.user.dao.main;


import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import kr.co.sist.user.vo.main.MainVO;

@Mapper
public interface UserMainDAO {
    List<MainVO> selectRecentJobPosts();
    List<MainVO> selectInterestingPositions(String userId);
    List<MainVO> selectHighSalaryPositions();
    List<MainVO> selectViewHistory(String userId);
}
