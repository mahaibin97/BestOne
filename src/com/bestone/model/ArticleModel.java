package com.bestone.model;

import java.util.Date;

public class ArticleModel {

//    private UserModel user;
    private Integer article_id;
    private String title;
    private String phoneNum;
    private String article_text;
    private Integer overview;
    private Integer thumbsUp;
    private Date time;

    public ArticleModel() {
        super();
    }

    public ArticleModel(Integer article_id, String title, String phoneNum, String article_text, Integer overview, Integer thumbsUp, Date time) {

//        this.user = user;
        this.article_id = article_id;
        this.title = title;
        this.phoneNum = phoneNum;
        this.article_text = article_text;
        this.overview = overview;
        this.thumbsUp = thumbsUp;
        this.time = time;
    }

//    public UserModel getUser() {
//        return user;
//    }
//
//    public void setUser(UserModel user) {
//        this.user = user;
//    }

    public Integer getArticle_id() {
        return article_id;
    }

    public String getTitle() {
        return title;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public String getrticle_text() {
        return article_text;
    }

    public Integer getOverview() {
        return overview;
    }

    public Integer getThumbsUp() {
        return thumbsUp;
    }

    public Date getTime() {
        return time;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public void setArticle_text(String article_text) {
        this.article_text = article_text;
    }

    public void setOverview(Integer overview) {
        this.overview = overview;
    }

    public void setThumbsUp(Integer thumbsUp) {
        this.thumbsUp = thumbsUp;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "ArticleModel{" +
                "article_id=" + article_id +
                ", title='" + title + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", text='" + article_text + '\'' +
                ", overview=" + overview +
                ", thumbsUp=" + thumbsUp +
                ", time=" + time +
                '}';
    }
}

















