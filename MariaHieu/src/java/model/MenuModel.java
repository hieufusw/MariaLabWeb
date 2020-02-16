package model;

import java.util.Date;


public class MenuModel {

    private int id;
    private String title;
    private String content;
    private Date updateTime;
    private float price;
    private String photoPath;

    public MenuModel() {
    }

    public MenuModel(int id, String title, String content, Date updateTime, float price, String photoPath) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.updateTime = updateTime;
        this.price = price;
        this.photoPath = photoPath;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }
    
}
