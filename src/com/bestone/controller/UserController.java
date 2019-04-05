package com.bestone.controller;

import com.bestone.model.ArticleModel;
import com.bestone.model.UserArticlePicture;
import com.bestone.model.UserCollectionArticle;
import com.bestone.service.ArticleService;
import com.bestone.util.Path;
import com.bestone.model.UserModel;
import com.bestone.service.UserService;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageDecoder;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.List;
@Controller
public class UserController {
    private Logger log=Logger.getLogger(LoginController.class);
    @Resource
    private UserService server;
    @Resource
    private ArticleService articleService;
    /**
     * 这个方法用于修改用户信息
     * @param request
     * @return
     */
    @RequestMapping(value = "updateUser")
    public String updateUserInformation(HttpServletRequest request, @RequestParam MultipartFile handShot){
        UserModel user= (UserModel) request.getSession().getAttribute("user");

        String uploadPath=Path.userPath+user.getPhoneNum()+"/"+"touxiang";

        MultipartFile updateHandShot= handShot;

        if(!updateHandShot.isEmpty()){
            File saveFile=new File(uploadPath+"/"+updateHandShot.getOriginalFilename());
            user.setHandShot(updateHandShot.getOriginalFilename());
            try {
                FileUtils.copyInputStreamToFile(updateHandShot.getInputStream(),saveFile);
                updateHandShot.transferTo(saveFile);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String pwd=request.getParameter("pwd");
        String name=request.getParameter("userName");
        String gender=request.getParameter("gender");
        String age=request.getParameter("age");
        //
        char[] ageTemp=age.toCharArray();
        for(char c:ageTemp){
            if(c<48||c>57){
                return "user";
            }
        }

        String userAddress=request.getParameter("userAddress");
        String job=request.getParameter("job");
        String sign=request.getParameter("sign");

        user.setUserName(name);
        user.setPasswd(pwd);
        user.setAge(Integer.valueOf(age));
        user.setGender(gender);
        user.setUserAddress(userAddress);
        user.setJob(job);
        user.setSign(sign);
        server.updateUserInformation(user);
        return "user";
    }
    @RequestMapping("/bmpShow")
    public void bmpShow(HttpServletRequest request, HttpServletResponse response,String userId) throws IOException {
        UserModel temp=new UserModel();
        temp.setPhoneNum(userId);
        UserModel user=server.getUserById(temp);
        String imagePath = Path.userPath+user.getPhoneNum()+"/"+"touxiang"+"/"+user.getHandShot();
        response.reset();
        OutputStream output = response.getOutputStream();// 得到输出流
        if (imagePath.toLowerCase().endsWith(".jpg"))// 使用编码处理文件流的情况：
        {
            response.setContentType("imag/jepg;charaset=utf-8");// 设定输出的类型
            // 得到图片的真实路径
            // 得到图片的文件流
            InputStream imageIn = new FileInputStream(new File(imagePath));
            // 得到输入的编码器，将文件流进行jpg格式编码
            JPEGImageDecoder decoder = JPEGCodec.createJPEGDecoder(imageIn);
            // 得到编码后的图片对象
            BufferedImage image = decoder.decodeAsBufferedImage();
            // 得到输出的编码器
            JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(output);
            encoder.encode(image);// 对图片进行输出编码
            imageIn.close();// 关闭文件流
        }
        if (imagePath.toLowerCase().endsWith(".png"))// 使用编码处理文件流的情况：
        {
            response.setContentType(" image/png;charaset=utf-8");
            InputStream imageIn = new FileInputStream(new File(imagePath));
            BufferedInputStream bis = new BufferedInputStream(imageIn);// 输入缓冲流
            BufferedOutputStream bos = new BufferedOutputStream(output);// 输出缓冲流
            byte data[] = new byte[4096];// 缓冲字节数
            int size = 0;
            size = bis.read(data);
            while (size != -1) {
                bos.write(data, 0, size);
                size = bis.read(data);
            }
            bis.close();
            bos.flush();// 清空输出缓冲流
            bos.close();
        }
        if (imagePath.toLowerCase().endsWith(".gif"))// 不使用编码处理文件流的情况：
        {
            response.setContentType("image/gif");
            InputStream imageIn = new FileInputStream(new File(imagePath));//文件流
            BufferedInputStream bis = new BufferedInputStream(imageIn);// 输入缓冲流
            BufferedOutputStream bos = new BufferedOutputStream(output);// 输出缓冲流
            byte data[] = new byte[4096];// 缓冲字节数
            int size = 0;
            size = bis.read(data);
            while (size != -1) {
                bos.write(data, 0, size);
                size = bis.read(data);
            }
            bis.close();
            bos.flush();// 清空输出缓冲流
            bos.close();
        }
        output.close();
    }
    @RequestMapping("logout")
    public String UserLogout(HttpServletRequest request){
        request.getSession().setAttribute("user",null);
        return "main";
    }

    /**
     * 收藏文章
     */
    @RequestMapping("collectArticle")
    public String collectArticle(HttpServletRequest request){
        UserCollectionArticle uca= (UserCollectionArticle) request.getSession().getAttribute("userCollectionArticle");
        server.collectArticle(uca);
        return "redirect:/commodity?articleId="+uca.getArticle_id();
    }

    /**
     * 显示用户发表过的文章
     * @param request
     * @param condition
     * @return
     */
    @RequestMapping(value = "ShowUserDetailsList")
    public ModelAndView ShowUserDetailsList(HttpServletRequest request,String condition){
        ModelAndView view=new ModelAndView();
        view.setViewName("user_details_list");

        log.debug("=================to ShowUserDetailsList================");
        log.debug("==============================================="+view.toString());
        if(condition.equals("1")){
            UserModel user= (UserModel) request.getSession().getAttribute("user");
            List<UserArticlePicture>list=articleService.findArticleByUser(user);
            view.addObject("List",list);
        }
        if(condition.equals("3")){
            UserModel user= (UserModel) request.getSession().getAttribute("user");
            List<UserArticlePicture>list=articleService.findArticleByComment(user);
            view.addObject("List",list);
        }
        if(condition.equals("4")){
            UserModel user= (UserModel) request.getSession().getAttribute("user");
            List<UserArticlePicture>list=articleService.findArticleByCollection(user);
            view.addObject("List",list);
        }
        return view;
    }

}
