package com.bestone.model;

public class ArticleModel22 {

    private Integer article22_id;
    private String article22_title;
    private String article22_abstract;
    private String article22_content;
    private String time;
    private String phoneNum;


    public ArticleModel22() {
        super();
    }

    public ArticleModel22(Integer article22_id, String article22_title, String article22_abstract, String article22_content, String time, String phoneNum) {
        this.article22_id = article22_id;
        this.article22_title = article22_title;
        this.article22_abstract = article22_abstract;
        this.article22_content = article22_content;
        this.time = time;
        this.phoneNum = phoneNum;
    }

    public Integer getArticle22_id() {
        return article22_id;
    }

    public void setArticle22_id(Integer article22_id) {
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

    public String getArticle22_abstract() {
        return article22_abstract;
    }

    public void setArticle22_abstract(String article22_abstract) {
        this.article22_abstract = article22_abstract;
    }

    @Override
    public String toString() {
        return "ArticleModel22{" +
                "article22_id=" + article22_id +
                ", article22_title='" + article22_title + '\'' +
                ", article22_abstract='" + article22_abstract + '\'' +
                ", article22_content='" + article22_content + '\'' +
                ", time='" + time + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                '}';
    }
}
