package Test;

import com.bestone.model.UserModel;
import com.bestone.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
@Controller
public class Test {
    @Resource
    private UserService server;
    public static void main(String []args){
        Test t=new Test();
        UserModel user=new UserModel();
        user.setPhoneNum("13186521908");
        user.setPasswd("123456");
        UserModel result=t.server.login(user);
        System.out.println(result);
    }
}
