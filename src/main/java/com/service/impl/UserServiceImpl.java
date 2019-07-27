package com.service.impl;

import com.mapper.UserMapper;
import com.pojo.User;
import com.service.UserService;
import com.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;


    /**
     * 查询全表
     *
     * @return
     */
    @Override
    public List<User> list() {
        return userMapper.list();
    }


    /**
     * 分页查询
     *
     * @param page
     * @return
     */
    @Override
    public List<User> list(Page page) {
        // TODO Auto-generated method stub
        return userMapper.list(page);
    }

    /**
     * 分页工具
     *
     * @param
     * @return
     */
    @Override
    public int total() {
        return userMapper.total();
    }


    /**
     * 增加
     *
     * @param user
     */
    @Override
    public void add(User user) {
        userMapper.add(user);

    }

    /**
     * 更新
     *
     * @param user
     */
    @Override
    public void updateById(User user) {
        userMapper.updateById(user);
    }

    /**
     * 删除
     *
     * @param id
     */
    @Override
    public void deleteById(long id) {
        userMapper.deleteById(id);
    }

    /**
     * 通过ID查询
     *
     * @param id
     * @return
     */
    @Override
    public User selectById(Long id) {
        // TODO Auto-generated method stub
        return userMapper.selectById(id);
    }


    /**
     * 模糊查询
     *
     * @param name
     * @return
     */
    @Override
    public List<User> selectByName(String name) {
        // TODO Auto-generated method stub
        return userMapper.selectByName(name);
    }


}
