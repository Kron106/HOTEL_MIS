package com.Hotel.dao.impl;

import com.Hotel.dao.ShopDao;
import com.Hotel.model.DataCount;
import com.Hotel.model.RoomInfo;
import com.Hotel.model.Shop;
import com.Hotel.util.DateUtil;
import com.Hotel.util.DbUtils;
import com.Hotel.util.JdbcUtil;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class ShopImpl implements ShopDao {
    DbUtils utils=new DbUtils();

    /**
     *显示全部
     */
    @Override
    public List<Shop> queryList(int startPage, int limit, String goodsID) throws SQLException {
        String sql="select * from shop where 1=1";
        StringBuffer sb=new StringBuffer(sql);
        if(goodsID!=null){
            goodsID="%"+goodsID+"%";
            sb.append( " and number like '"+goodsID+"'");
        }
        sb.append(" limit "+startPage+","+limit);
        List<Shop> list=utils.list(Shop.class,sb.toString(),null);
        return list;
    }

    /**
     * 获取总的记录数据
     */
    @Override
    public int getCounts(String goodsID) throws SQLException {
        String sql="select * from shop where 1=1";
        StringBuffer sb=new StringBuffer(sql);
        if(goodsID!=null){
            goodsID="%"+goodsID+"%";
            sb.append( " and number like '"+goodsID+"'");
        }
        int num=utils.getCount(sb.toString());
        return num;
    }

    /**
     *添加
     */
    @Override
    public boolean saveInfo(Shop info) {
        String date= DateUtil.dateChangeString(new Date());
        String sql="insert into shop " +
                "(goodsID,goodsName,count,remains,introduce,price) values(" +
                " '"+info.getGoodsID()+"',"+info.getGoodsName()+","+info.getCount()+","+info.getRemains()+"," +
                ""+info.getIntroduce()+",'"+info.getPrice()+"')";
        int nums= JdbcUtil.insertOrUpdateOrDeleteInfo(sql);
        if(nums>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteById(String goodsID) {
        String sql="delete from shop where goodsID="+goodsID;
        int nums=JdbcUtil.insertOrUpdateOrDeleteInfo(sql);
        if(nums>0){
            return true;
        }
        return false;
    }

    @Override
    public Shop queryByID(String goodsID) throws SQLException {
        String sql="select * from shop where goodsID="+goodsID;
        Shop info=utils.query(Shop.class,sql,null);
        return info;
    }

    @Override
    public boolean updateInfo(Shop info) {
        String sql="update shop set goodsName="+info.getGoodsName()+"," +
                " count="+info.getCount()+"," +
                " remains='"+info.getRemains()+"',introduce="+info.getIntroduce()+"," +
                " price='"+info.getPrice()+"' where goodsID="+info.getGoodsID();
        int nums=JdbcUtil.insertOrUpdateOrDeleteInfo(sql);
        if(nums>0){
            return true;
        }
        return false;
    }

    @Override
    public boolean updateStatusById(Integer status, Integer id) {
        return false;
    }

    @Override
    public List<Shop> queryListByStatus(Integer status) {
        return null;
    }

    @Override
    public List<DataCount> queryTjList() throws SQLException {
        return null;
    }

    @Override
    public List<Shop> queryRoomListByStatus(Integer status) {
        return null;
    }
}
