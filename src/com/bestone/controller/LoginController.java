package com.bestone.controller;

import com.bestone.model.UserModel;
import com.bestone.service.UserService;
import com.bestone.util.CopyFileUtil;
import com.bestone.util.Path;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Random;


@Controller
@RequestMapping(value = "/login")
public class LoginController {
    private Logger log=Logger.getLogger(LoginController.class);
    @Resource
    private UserService server;

    @RequestMapping("/login")
    public String toIndex(HttpServletRequest request){
        log.debug("-------->>：to index");

        String phone=request.getParameter("phone");
        String password=request.getParameter("pwd");
        String msg="";
        if(StringUtils.isEmpty(phone)||StringUtils.isEmpty(password)){
            msg="用户名或密码不能为空";
            request.getSession().setAttribute("msg",msg);
            return "Login";
        }
        UserModel u=new UserModel();
        u.setPhoneNum(phone);u.setPasswd(password);
        UserModel user=null;
        user=server.login(u);
        if(user==null){
            msg="账号密码错误!";
            log.debug(msg);
            request.getSession().setAttribute("msg",msg);
            return "Login";
        }
        request.getSession().setAttribute("user",user);
        request.getSession().setAttribute("msg",msg);
        return "redirect:/main";
    }

    @RequestMapping(value = "toregister")
    public String toRegister(HttpServletRequest request) {
        log.info("----->>>:to register");
        return "register";
    }
    @RequestMapping("/register")
    public String addUser(HttpServletRequest request){
        log.debug("--------->>:register");
        String pwd=request.getParameter("pwd");
        String phone=request.getParameter("phone");
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String age=request.getParameter("age");
        //age
        char[] ageTemp=age.toCharArray();
        for(char c:ageTemp){
            if(c<48||c>57){
                return "register";
            }
        }

        String handShot;
        Random random=new Random();
        if(gender.equals("男")){
            Integer i=random.nextInt(10)+1;
            handShot="boy"+i.toString()+".png";
            String resourceImg=Path.handShotPath+"boy"+i.toString()+".png";
            String outImg=Path.userPath+phone+"\\touxiang";
            File fileDir=new File(outImg);
            if(!fileDir.exists()){
                fileDir.mkdirs();
            }
            CopyFileUtil copyUtil=new CopyFileUtil();
            copyUtil.copyFile1(resourceImg,outImg+"\\"+handShot);

        }else{
            Integer i=random.nextInt(10)+1;
            String resourceImg=Path.handShotPath+"girl"+i.toString()+".png";
            handShot="girl"+i.toString()+".png";
            String outImg=Path.userPath+phone+"\\touxiang";
            File fileDir=new File(outImg);
            if(!fileDir.exists()){
                fileDir.mkdirs();
            }
            CopyFileUtil copyUtil=new CopyFileUtil();
            copyUtil.copyFile1(resourceImg,outImg+"\\"+handShot);
        }
        UserModel user=new UserModel();
        user.setPhoneNum(phone);
        user.setUserName(name);
        user.setPasswd(pwd);
        user.setAge(Integer.valueOf(age));
        user.setGender(gender);
        user.setHandShot(handShot);
        server.register(user);
        UserModel result=server.login(user);
        request.getSession().setAttribute("user",result);
        return "redirect:/main";
    }

    @RequestMapping(value = "toChangePassword")
    public String toChangePassword(HttpServletRequest request) {
        log.info("----->>>:toChangePassword");
        return "changePassword";
    }

    @RequestMapping("/changepassword")
    public String changePassword(HttpServletRequest request){
        log.debug("--------->>:changePassword");
        String pwd=request.getParameter("pwd");
        String phone=request.getParameter("phone");
        UserModel user=new UserModel();
        user.setPhoneNum(phone);
        user.setPasswd(pwd);
        server.changePassword(user);
        UserModel result=server.login(user);
        request.getSession().setAttribute("user",result);
        return "redirect:/main";
    }
}
