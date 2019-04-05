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
    private String time;
    private Integer labelID;
    private String keyWords;

    public ArticleModel() {
    }

    public ArticleModel(Integer article_id, String title, String phoneNum, String article_text, Integer overview, Integer thumbsUp, String time, Integer labelID, String keyWords) {
        this.article_id = article_id;
        this.title = title;
        this.phoneNum = phoneNum;
        this.article_text = article_text;
        this.overview = overview;
        this.thumbsUp = thumbsUp;
        this.time = time;
        this.labelID = labelID;
        this.keyWords = keyWords;
    }

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getArticle_text() {
        return article_text;
    }

    public void setArticle_text(String article_text) {
        this.article_text = article_text;
    }

    public Integer getOverview() {
        return overview;
    }

    public void setOverview(Integer overview) {
        this.overview = overview;
    }

    public Integer getThumbsUp() {
        return thumbsUp;
    }

    public void setThumbsUp(Integer thumbsUp) {
        this.thumbsUp = thumbsUp;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getLabelID() {
        return labelID;
    }

    public void setLabelID(Integer labelID) {
        this.labelID = labelID;
    }

    public String getKeyWords() {
        return keyWords;
    }

    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    @Override
    public String toString() {
        return "ArticleModel{" +
                "article_id=" + article_id +
                ", title='" + title + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", article_text='" + article_text + '\'' +
                ", overview=" + overview +
                ", thumbsUp=" + thumbsUp +
                ", time='" + time + '\'' +
                ", labelID=" + labelID +
                ", keyWords='" + keyWords + '\'' +
                '}';
    }
}

















