package com.tthieu.model;

public class ProductModel extends AbstractModel{
    private String shortSummary;
    private String content;
    private String image;
    private double price;
    private int categoryId;
    private String manufacturer;
    private int views;

    public ProductModel() {
    }

    public ProductModel(int id){
        setId(id);
    }

    public String getShortSummary() {
        return shortSummary;
    }

    public void setShortSummary(String shortSummary) {
        this.shortSummary = shortSummary;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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

    @Override
    public String toString() {
        return "ProductModel{" +
                "name='" + getName() + '\'' +
                "shortSummary='" + shortSummary + '\'' +
                ", content='" + content + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", categoryId=" + categoryId +
                ", manufacturer='" + manufacturer + '\'' +
                ", Slug='" + getSlug() + '\'' +
                ", views=" + views +
                '}';
    }
}
