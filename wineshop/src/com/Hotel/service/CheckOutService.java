package com.Hotel.service;

import com.Hotel.model.CheckOutRoom;
import com.Hotel.util.PageBean;

import java.sql.SQLException;

public interface CheckOutService {

    /**
     * 分页查询
     */
    PageBean getPage(String page, String limit, String content) throws SQLException;

    /**
     * 增加
     */
    boolean saveInfo(CheckOutRoom outRoom) throws SQLException;

    /**
     * 删除
     */
    boolean deleteById(Integer id);

    /**
     * 根据id查询对象
     */
    CheckOutRoom queryByID(Integer id) throws SQLException;
}
