package com.service.impl;

import com.pojo.User;
import com.service.UserService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Timestamp;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class UserServiceImplTest {
    Logger logger = Logger.getLogger(UserServiceImplTest.class);
    @Autowired
    UserService userService;

    /**
     * 查询全表
     */
    @Test
    public void list() {
        logger.info(userService.list());
    }

    /**
     * 增加
     */
    @Test
    public void add() {

        User u = new User();
        u.setCreateAt(new Timestamp(System.currentTimeMillis()));
        u.setUpdateAt(new Timestamp(System.currentTimeMillis()));
        u.setName("德华");
        u.setQq(12306);
        u.setJob("攻城狮");
        u.setCollege("牧专");
        u.setNumber(10086);
        u.setDailyUrl("com");
        u.setWish("暴富 ");
        u.setBrother("汇通 ");
        u.setReferee("知乎");
        u.setReview("通过");
        u.setCity("郑州");
        userService.add(u);
    }

    /**
     * 根据ID查询
     */
    @Test
    public void select() {
        logger.info(userService.selectById(2L));
    }


    /**
     * 修改
     */
    @Test
    public void updateById() {
        User user = new User();
        user.setId(2L);
        user.setName("哈哈");
        user.setQq(110);
        userService.updateById(user);


    }

    /**
     * 删除
     */
    @Test
    public void deleteById() {
        userService.deleteById(2L);
    }

    /**
     * 根据ID查询
     */
    @Test
    public void selectById() {
        userService.selectById(1L);
    }


    /**
     * 模糊查询
     */
    @Test
    public void selectByName() {
        userService.selectByName("凡");
    }
}