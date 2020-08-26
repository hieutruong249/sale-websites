package com.tthieu.model;

public class ProductModel extends AbstractModel{
    private String shortSumary;
    private String conten;
    private String image;
    private double price;
    private int categoryId;
    private String manufacturer;
    private int views;

    public String getShortSumary() {
        return shortSumary;
    }

    public void setShortSumary(String shortSumary) {
        this.shortSumary = shortSumary;
    }

    public String getConten() {
        return conten;
    }

    public void setConten(String conten) {
        this.conten = conten;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }
}
