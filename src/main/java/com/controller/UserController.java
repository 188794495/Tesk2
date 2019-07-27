package com.controller;


import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.pojo.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.service.UserService;
import com.util.Page;

import javax.servlet.http.HttpSession;


/**
 * Controller
 *
 * @author Administrator
 * @author Administrator
 */

// 告诉spring mvc这是一个控制器类
@Controller
//路径前置地址
@RequestMapping("")
public class UserController {

    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    UserService userService;

    /**
     * 主页jsp的controller
     *
     * @param page
     * @return
     */
    @RequestMapping(value = "/listUsers", method = RequestMethod.GET)
    public String listUser(HttpSession session, Page page) {
        List<User> cs = userService.list(page);
        int total = userService.total();
        page.caculateLast(total);
        // 放入转发参数
        session.setAttribute("list",cs);
        // 放入jsp路径
        return "listUser";
    }


    /**
     * 增加数据的controller
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/listUsers", method = RequestMethod.POST)
    public ModelAndView addUser(User user) {
        logger.info("user.getName():" + user.getName());
        user.setCreateAt(new Timestamp(System.currentTimeMillis()));
        user.setUpdateAt(new Timestamp(System.currentTimeMillis()));
        userService.add(user);
        ModelAndView mav = new ModelAndView("redirect:/listUsers");
        return mav;
    }

    /**
     * 删除数据的controller
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/listUsers/{id}", method = RequestMethod.DELETE)
    public ModelAndView deleteUser(@PathVariable("id") long id) {
        userService.deleteById(id);
        ModelAndView mav = new ModelAndView("redirect:/listUsers");
        return mav;
    }

    /**
     * 更新数据的controller
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/listUsers/{id}", method = RequestMethod.GET)
    public ModelAndView editCategory(User user) {
        User c = userService.selectById(user.getId());
        ModelAndView mav = new ModelAndView("editUser");
        mav.addObject("c", c);
        return mav;
    }

    @RequestMapping(value = "/listUsers/{id}", method = RequestMethod.PUT)
    public ModelAndView updateUser(User user) {
        userService.updateById(user);
        ModelAndView mav = new ModelAndView("redirect:/listUsers");
        return mav;
    }


    /**
     * 根据吗名字模糊查询的controller
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/user/name")
    public ModelAndView selectByName(String name) {
        List<User> cs = userService.selectByName(name);
        ModelAndView mav = new ModelAndView();
        // 放入转发参数
        mav.addObject("cs", cs);
        mav.setViewName("getUser");
        return mav;
    }

    /**
     * json taglib返回假数据
     *
     * @param
     * @return
     */
    @RequestMapping(value = "/json", method = RequestMethod.GET)
    public String phony(Map<String, Object> map) throws Exception {
        map.put("name", "德华");
        map.put("wish", "瘦一点");
        map.put("college", "复旦");
        map.put("job", "java");
        map.put("number", 10086);
        map.put("referee", "知乎");
        logger.info("############" + map + "############");
        return "json";
    }

    /**
     * @author直接用Spring返回json对象 使用@ResponseBody注解的方式
     * @SpringMVC需要开启注解模式
     */

    @RequestMapping(value = "/ajax", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> ajax() {
        Map<String, Object> map = new HashMap<>();
        map.put("name", "张鑫");
        map.put("wish", "老大最帅");
        map.put("college", "河南大学");
        map.put("job", "java");
        map.put("number", 4529);
        map.put("referee", "知乎");
        map.put("review", "审核中");
        logger.info("#########################" + map + "##########################");
        return map;
    }


}
