//package com.Hotel.dao;
//
////import com.Hotel.dao.impl.ShopImpl;
//import com.Hotel.model.DataCount;
//import com.Hotel.model.RoomInfo;
//import com.Hotel.model.Shop;
//import com.Hotel.model.UserInfo;
//
//import java.sql.SQLException;
//import java.util.List;
//
//public interface ShopDao {
//    /**
//     * 查询房间列表
//     * @param startPage 起始页
//     * @param limit  每页显示的记录数据
//     * @param content  高级查询的条件
//     * @return
//     */
//    List<Shop> queryList(int startPage, int limit, String content) throws SQLException;
//
//
//    /**
//     * 获取总的记录数据
//     */
//    int getCounts(String content) throws SQLException;
//
//    /**
//     * 增加
//     */
//    boolean saveInfo(Shop info);
//
//    /**
//     * 删除
//     */
//    boolean deleteById(String goodsID);
//
//    /**
//     * 根据id查询对象
//     */
//    Shop queryByID(String goodsID) throws SQLException;
//
//    /**
//     * 修改提交操作
//     */
//    boolean updateInfo(Shop info);
//
//    /**
//     * 房间状态
//     * 根据id修改状态
//     */
//    boolean updateStatusById(Integer status,Integer id);
//
//    /**
//     * 查询未预定房间信息
//     */
//    List<Shop> queryListByStatus(Integer status);
//
//
//    /**
//     * 根据房间类型进行统计
//     */
//    List<DataCount> queryTjList() throws SQLException;
//
//    /**
//     * 根据状态查询房间信息 状态为 0
//     * @return
//     */
//    List<Shop> queryRoomListByStatus(Integer status);
//
//}
