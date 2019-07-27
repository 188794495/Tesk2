package com.service;

import com.pojo.User;
import com.util.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Administrator
 */
public interface UserService {
    /**
     * 查询全表
     *
     * @return
     */
    List<User> list();

    /**
     * 分页
     *
     * @return
     */
    int total();

    /**
     * 分页查询
     *
     * @param page
     * @return
     */
    List<User> list(Page page);

    /**
     * 增加
     *
     * @param user
     */
    void add(User user);

    /**
     * 更新
     *
     * @param user
     */
    void updateById(User user);

    /**
     * 删除
     *
     * @param id
     */
    void deleteById(long id);

    /**
     * 根据ID查询
     *
     * @param id
     * @return
     */
    User selectById(Long id);

    /**
     * 模糊查询
     *
     * @param name
     * @return
     */
    List<User> selectByName(@Param("name") String name);

}
