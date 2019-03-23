package com.bestone.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class PageController {
    private Logger log=Logger.getLogger(PageController.class);

    @RequestMapping(value = "main")
    public String toMain(HttpServletRequest request) {
        log.info("----->>>:to main");
        return "/main";
    }
    @RequestMapping(value = "top")
    public String queryTop(HttpServletRequest request) {
        log.info("----->>>:to main_top");
        return "main_top";
    }
    @RequestMapping(value = "left")
    public String queryLeft(HttpServletRequest request) {
        log.info("----->>>:to main_left");
        return "main_left";
    }
    //加载分页面 bottom
    @RequestMapping(value = "bottom")
    public String queryBottom(HttpServletRequest request) {
        log.info("----->>>:to main_bottom");
        return "main_bottom";
    }

    //加载分页面 bottom
    @RequestMapping(value = "right")
    public String queryRight(HttpServletRequest request) {
        log.info("----->>>:to main_right");
        return "main_right";
    }

    @RequestMapping(value = "Login")
    public String Login(HttpServletRequest request) {
        log.info("----->>>:to Login");
        return "Login";
    }

    @RequestMapping(value = "user")
    public String toUser(HttpServletRequest request) {
        log.info("----->>>:to user");
        return "user";
    }

    @RequestMapping(value = "user_details")
    public String toUser_details(HttpServletRequest request) {
        log.info("----->>>:to user_details");
        return "user_details";
    }

    @RequestMapping(value = "commodity")
    public String toCommodity(HttpServletRequest request) {
        log.info("----->>>:to commodity");
        return "commodity";
    }

    @RequestMapping(value = "commodity_details")
    public String toCommodityDetails(HttpServletRequest request) {
        log.info("----->>>:to commoditydetails");
        return "commodity_details";
    }
    @RequestMapping(value = "community")
    public String toCommunity(HttpServletRequest request) {
        log.info("----->>>:to community");
        return "community";
    }
    @RequestMapping(value = "community_left")
    public String toCommunityLeft(HttpServletRequest request) {
        log.info("----->>>:to community_left");
        return "community_left";
    }
    @RequestMapping(value = "community_right")
    public String toCommunityRight(HttpServletRequest request) {
        log.info("----->>>:to community_right");
        return "community_right";
    }
    @RequestMapping(value = "user_settings")
    public String toUser_Settings(HttpServletRequest request) {
        log.info("----->>>:to user_settings");
        return "user_settings";
    }
    @RequestMapping(value = "user_settings_details")
    public String toUser_Settings_Details(HttpServletRequest request) {
        log.info("----->>>:to user_settings_details");
        return "user_settings_details";
    }
}
