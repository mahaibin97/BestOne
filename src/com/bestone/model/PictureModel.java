package com.bestone.model;

public class PictureModel {
    private Integer pictureId;
    private Integer articleId;
    private String picture;

    public PictureModel() {
    }

    public PictureModel(Integer pictureId, Integer articleId, String picture) {
        this.pictureId = pictureId;
        this.articleId = articleId;
        this.picture = picture;
    }

    public Integer getPictureId() {
        return pictureId;
    }

    public void setPictureId(Integer pictureId) {
        this.pictureId = pictureId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "PictureModel{" +
                "pictureId=" + pictureId +
                ", articleId=" + articleId +
                ", picture='" + picture + '\'' +
                '}';
    }
}
