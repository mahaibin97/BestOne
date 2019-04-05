package com.bestone.model;

public class UserArticle22 {
    private Integer article22_id;
    private String article22_title;
    private String article22_abstract;
    private String article22_content;
    private String time;
    private String phoneNum;
    private String userName;
    private String handShot;//用户头像

    public UserArticle22() {
        super();
    }

    public UserArticle22(String article22_title, String article22_content, String time, String phoneNum, String userName) {
        this.article22_id = article22_id;
        this.article22_title = article22_title;
        this.article22_content = article22_content;
        this.time = time;
        this.phoneNum = phoneNum;
        this.userName = userName;
    }

    public UserArticle22(Integer article22_id, String article22_title, String article22_content, String time, String phoneNum, String userName) {
        this.article22_id = article22_id;
        this.article22_title = article22_title;
        this.article22_content = article22_content;
        this.time = time;
        this.phoneNum = phoneNum;
        this.userName = userName;
    }

    public UserArticle22(Integer article22_id, String article22_title, String article22_abstract, String article22_content, String time, String phoneNum, String userName, String handShot) {
        this.article22_id = article22_id;
        this.article22_title = article22_title;
        this.article22_abstract = article22_abstract;
        this.article22_content = article22_content;
        this.time = time;
        this.phoneNum = phoneNum;
        this.userName = userName;
        this.handShot = handShot;
    }

    public Integer getArticle22_id() {
        return article22_id;
    }

    public void w(Integer article22_id) {
        this.article22_id = article22_id;
    }

    public String getArticle22_title() {
        return article22_title;
    }

    public void setArticle22_title(String article22_title) {
        this.article22_title = article22_title;
    }

    public String getArticle22_content() {
        return article22_content;
    }

    public void setArticle22_content(String article22_content) {
        this.article22_content = article22_content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getArticle22_abstract() {
        return article22_abstract;
    }

    public void setArticle22_abstract(String article22_abstract) {
        this.article22_abstract = article22_abstract;
    }

    public String getHandShot() {
        return handShot;
    }

    public void setHandShot(String handShot) {
        this.handShot = handShot;
    }

    @Override
    public String toString() {
        return "UserArticle22{" +
                "article22_id=" + article22_id +
                ", article22_title='" + article22_title + '\'' +
                ", article22_abstract='" + article22_abstract + '\'' +
                ", article22_content='" + article22_content + '\'' +
                ", time='" + time + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", userName='" + userName + '\'' +
                ", handShot='" + handShot + '\'' +
                '}';
    }
}
