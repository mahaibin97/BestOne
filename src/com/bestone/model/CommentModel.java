package com.bestone.model;

import java.util.ArrayList;
import java.util.List;

public class CommentModel {
    private Integer comment_id;
    private Integer article_id;
    private String  phoneNum;
    private String  context;
    private Integer root_id;
    private Integer parent;
    private String  reply_id;
    private String  date;

    private String userName;
    private String replyName;

    private List<CommentModel> childComments=null;

    public CommentModel() {
    }
    public CommentModel(Integer comment_id, Integer article_id, String phoneNum, String context, String date) {
        this.comment_id = comment_id;
        this.article_id = article_id;
        this.phoneNum = phoneNum;
        this.context = context;
        this.date = date;
    }
    public CommentModel(Integer comment_id, Integer article_id, String phoneNum, String context, Integer root_id, Integer parent, String reply_id, String date, String userName, String replyName) {
        this.comment_id = comment_id;
        this.article_id = article_id;
        this.phoneNum = phoneNum;
        this.context = context;
        this.root_id = root_id;
        this.parent = parent;
        this.reply_id = reply_id;
        this.date = date;
        this.userName = userName;
        this.replyName = replyName;
    }

    public Integer getComment_id() {
        return comment_id;
    }

    public void setComment_id(Integer comment_id) {
        this.comment_id = comment_id;
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

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Integer getRoot_id() {
        return root_id;
    }

    public void setRoot_id(Integer root_id) {
        this.root_id = root_id;
    }

    public Integer getParent() {
        return parent;
    }

    public void setParent(Integer parent) {
        this.parent = parent;
    }

    public String getReply_id() {
        return reply_id;
    }

    public void setReply_id(String reply_id) {
        this.reply_id = reply_id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getReplyName() {
        return replyName;
    }

    public void setReplyName(String replyName) {
        this.replyName = replyName;
    }

    @Override
    public String toString() {
        return "CommentModel{" +
                "comment_id=" + comment_id +
                ", article_id=" + article_id +
                ", phoneNum='" + phoneNum + '\'' +
                ", context='" + context + '\'' +
                ", root_id=" + root_id +
                ", parent=" + parent +
                ", reply_id='" + reply_id + '\'' +
                ", date='" + date + '\'' +
                ", userName='" + userName + '\'' +
                ", replyName='" + replyName + '\'' +
                ", childComments=" + childComments +
                '}';
    }

    public List<CommentModel> getChildComments() {
        return childComments;
    }

    public void setChildComments(List<CommentModel> childComments) {
        this.childComments = new ArrayList<>();
        for(int i=0;i<childComments.size();i++){
            this.childComments.add(childComments.get(0));
        }
    }
}
