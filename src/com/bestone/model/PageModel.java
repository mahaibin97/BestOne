package com.bestone.model;

public class PageModel {
    private Integer countPage;
    private Integer nowCount;
    private Integer pageSize;
    private Integer nowPage;
    public PageModel() {
        super();
    }

    public PageModel(Integer countPage, Integer nowCount, Integer pageSize, Integer nowPage) {
        this.countPage = countPage;
        this.nowCount = nowCount;
        this.pageSize = pageSize;
        this.nowPage = nowPage;
    }

    public Integer getCountPage() {
        return countPage;
    }

    public void setCountPage(Integer countPage) {
        this.countPage = countPage;
    }

    public Integer getNowCount() {
        return nowCount;
    }

    public void setNowCount(Integer nowCount) {
        this.nowCount = nowCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getNowPage() {
        return nowPage;
    }

    public void setNowPage(Integer nowPage) {
        this.nowPage = nowPage;
    }

    @Override
    public String toString() {
        return "PageModel{" +
                "countPage=" + countPage +
                ", nowCount=" + nowCount +
                ", pageSize=" + pageSize +
                ", nowPage=" + nowPage +
                '}';
    }
}
