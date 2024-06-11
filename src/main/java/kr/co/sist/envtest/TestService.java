package kr.co.sist.envtest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {
    @Autowired(required = false)
    private TestDAO testDAO;
    
    public List<String> test(){
        return testDAO.test();
    }
}
