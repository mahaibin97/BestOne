package com.bestone.model;

public class UserArticlePicture {
    private Integer article_id;
    private String title;
    private String phoneNum;
    private String article_text;
    private Integer overview;
    private Integer thumbsUp;
    private String time;
    private Integer labelID;
    private String keyWords;

    private String userName;
    private String gender;
    private Integer age;
    private String userAddress;
    private String job;
    private String sign;
    private String handShot;

    private Integer pictureId;
    private String picture;

    private String labelName;



    public UserArticlePicture() {
    }

    public UserArticlePicture(Integer article_id, String title, String phoneNum, String article_text, Integer overview, Integer thumbsUp, String time, Integer labelID, String keyWords, String userName, String gender, Integer age, String userAddress, String job, String sign, String handShot, Integer pictureId, String picture) {
        this.article_id = article_id;
        this.title = title;
        this.phoneNum = phoneNum;
        this.article_text = article_text;
        this.overview = overview;
        this.thumbsUp = thumbsUp;
        this.time = time;
        this.labelID = labelID;
        this.keyWords = keyWords;
        this.userName = userName;
        this.gender = gender;
        this.age = age;
        this.userAddress = userAddress;
        this.job = job;
        this.sign = sign;
        this.handShot = handShot;
        this.pictureId = pictureId;
        this.picture = picture;
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


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getHandShot() {
        return handShot;
    }

    public void setHandShot(String handShot) {
        this.handShot = handShot;
    }

    public Integer getPictureId() {
        return pictureId;
    }

    public void setPictureId(Integer pictureId) {
        this.pictureId = pictureId;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Override
    public String toString() {
        return "UserArticlePicture{" +
                "article_id=" + article_id +
                ", title='" + title + '\'' +
                ", phoneNum='" + phoneNum + '\'' +
                ", article_text='" + article_text + '\'' +
                ", overview=" + overview +
                ", thumbsUp=" + thumbsUp +
                ", time='" + time + '\'' +
                ", labelID=" + labelID +
                ", keyWords='" + keyWords + '\'' +
                ", userName='" + userName + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", userAddress='" + userAddress + '\'' +
                ", job='" + job + '\'' +
                ", sign='" + sign + '\'' +
                ", handShot='" + handShot + '\'' +
                ", pictureId=" + pictureId +
                ", picture='" + picture + '\'' +
                '}';
    }

    public String getLabelName() {
        return labelName;
    }

    public void setLabelName(String labelName) {
        this.labelName = labelName;
    }
}
