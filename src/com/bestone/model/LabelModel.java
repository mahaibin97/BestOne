package com.bestone.model;

public class LabelModel {
    private Integer label_id;
    private String text;
    private Integer classify_id;

    public LabelModel() {
        super();
    }

    public LabelModel(Integer label_id, String text, Integer classify_id) {
        this.label_id = label_id;
        this.text = text;
        this.classify_id = classify_id;
    }

    public Integer getClassify_id() {
        return classify_id;
    }

    public void setClassify_id(Integer classify_id) {
        this.classify_id = classify_id;
    }

    public Integer getLabel_id() {
        return label_id;
    }

    public String getText() {
        return text;
    }

    public void setLabel_id(Integer label_id) {
        this.label_id = label_id;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "LabelModel{" +
                "label_id=" + label_id +
                ", text='" + text + '\'' +
                '}';
    }
}
