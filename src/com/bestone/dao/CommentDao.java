package com.bestone.dao;

import com.bestone.model.CommentModel;

import java.util.List;

public interface CommentDao {
    //写文章的根评论
    void addRootComment(CommentModel comment);

    //获取文章根评论
    List<CommentModel> getRootComments(CommentModel comment);

    //查询文章子评论
    List<CommentModel> getChildComments(CommentModel comment);

    //写回复评论
    void addReplyComment(CommentModel comment);

}
