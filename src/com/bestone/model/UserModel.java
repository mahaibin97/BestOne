package com.bestone.model;
import java.util.ArrayList;
import java.util.List;

public class UserModel {
    private String phoneNum;
    private String passwd;
    private String userName;
    private String gender;
    private Integer age;
    private String userAddress;
    private String job;
    private String sign;
    private String handShot;
    //*****
    private List<ArticleModel> addressList=new ArrayList<ArticleModel>();
    public UserModel() {
        super();
    }

    public UserModel(String phoneNum, String passwd, String userName, String gender, Integer age, String userAddress, String job, String sign, String handShot) {
        this.phoneNum = phoneNum;
        this.passwd = passwd;
        this.userName = userName;
        this.gender = gender;
        this.age = age;
        this.userAddress = userAddress;
        this.job = job;
        this.sign = sign;
        this.handShot = handShot;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
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

    public List<ArticleModel> getAddressList() {
        return addressList;
    }
    public void setAddressList(List<ArticleModel> addressList) {
        this.addressList = addressList;
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "phoneNum=" + phoneNum +
                ", passwd='" + passwd + '\'' +
                ", userName='" + userName + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", userAddress='" + userAddress + '\'' +
                ", job='" + job + '\'' +
                ", sign='" + sign + '\'' +
                ", handShot='" + handShot + '\'' +
                '}';
    }
}
