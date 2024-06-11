package kr.co.sist.envtest;

import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import kr.co.sist.properties.MyBatisConfig;

@Component
public class TestDAO {
    @Autowired(required = false)
    private MyBatisConfig myBatis;
    
    public List<String> test() {
        SqlSession ss = myBatis.getMyBatisHandler(false);
        List<String> testResult = new ArrayList<String>();
        testResult = ss.selectList("kr.co.sist.test.selectSkillList");
        
        return testResult;
    }
}
