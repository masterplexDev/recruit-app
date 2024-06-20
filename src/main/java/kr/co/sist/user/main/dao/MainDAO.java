package kr.co.sist.user.main.dao;


import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MainDAO {
    List<Map<String, Object>> selectRecentJobPosts(); // 최근 등록된 공고
    List<Map<String, Object>> selectInterestingPositions(String userId); // 내가 관심있을만한 기업
    List<Map<String, Object>> selectHighSalaryPositions(); // 고연봉 포지션
    List<Map<String, Object>> selectViewHistory(String userId);// 최근 내가 본 공고
}
