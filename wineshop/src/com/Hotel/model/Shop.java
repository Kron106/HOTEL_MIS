package com.Hotel.model;

public class Shop {
    private String goodsID;			//商品id
    private String goodsName;		//商品名
    private String count;			//商品数
    private String remains;			//商品剩余数
    private String introduce;		//商品介绍
    private String price;			//商品价格

    public Shop() {
        super();
    }

    public Shop(String goodsID, String goodsName, String count, String remains, String introduce, String price) {
        super();
        this.goodsID = goodsID;
        this.goodsName = goodsName;
        this.count = count;
        this.remains = remains;
        this.introduce = introduce;
        this.price = price;
    }

    public Shop(String goodsName, String count, String remains, String introduce, String price) {
        super();
        this.goodsName = goodsName;
        this.count = count;
        this.remains = remains;
        this.introduce = introduce;
        this.price = price;
    }

    public String getGoodsID() {
        return goodsID;
    }

    public void setGoodsID(String goodsID) {
        this.goodsID = goodsID;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getRemains() {
        return remains;
    }

    public void setRemains(String remains) {
        this.remains = remains;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Shop [goodsID=" + goodsID + ", goodsName=" + goodsName + ", count=" + count + ", remains=" + remains
                + ", introduce=" + introduce + ", price=" + price + "]";
    }
}
