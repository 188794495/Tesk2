package com.mapper;

import java.util.List;

import com.pojo.User;
import com.util.Page;
import org.apache.ibatis.annotations.Param;

/**
 * mapper接口
 *
 * @author Administrator
 */
public interface UserMapper {

    /**
     * 增加的接口
     *
     * @param user
     * @return
     */
    public int add(User user);

    /**
     * 删除
     *
     * @param id
     */
    public void deleteById(long id);

    /**
     * 根据ID查询
     *
     * @param id
     * @return
     */
    public User selectById(long id);

    /**
     * 更新
     *
     * @param user
     * @return
     */
    public int updateById(User user);

    /**
     * 查询全表
     *
     * @return
     */
    public List<User> list();

    /**
     * 分页查询全表
     *
     * @param page
     * @return
     */
    public List<User> list(Page page);

    /**
     * 模糊查询
     *
     * @param name
     * @return
     */
    public List<User> selectByName(@Param("name") String name);

    /**
     * 工具类Page接口
     *
     * @return
     */
    public int total();


}