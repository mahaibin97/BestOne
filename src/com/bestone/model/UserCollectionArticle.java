package com.bestone.model;

public class UserCollectionArticle {
    private  Integer article_id;
    private String phoneNum;
    private Boolean isCollected;

    public UserCollectionArticle(Integer article_id, String phoneNum) {
        this.article_id = article_id;
        this.phoneNum = phoneNum;
    }

    public UserCollectionArticle() {
    }

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public Boolean getCollected() {
        return isCollected;
    }

    public void setCollected(Boolean collected) {
        isCollected = collected;
    }

    @Override
    public String toString() {
        return "UserCollectionArticle{" +
                "article_id=" + article_id +
                ", phoneNum='" + phoneNum + '\'' +
                ", isCollected=" + isCollected +
                '}';
    }
}
