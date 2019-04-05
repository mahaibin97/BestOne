//package com.bestone.controller;
//
//import com.baidu.ueditor.ActionEnter;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@Controller
//@RequestMapping("/ueditor")
//public class UEditorController {
//
//
//    @RequestMapping("/jsp/controller")
//    public void writePage(HttpServletRequest request, HttpServletResponse response)
//            throws IOException {
//        request.setCharacterEncoding( "utf-8" );
//        response.setHeader("Content-Type" , "text/html");
//
//        String rootPath = request.getSession().getServletContext().getRealPath("/");
//        response.getWriter().write(new ActionEnter(request, rootPath).exec());
//    }
//}

