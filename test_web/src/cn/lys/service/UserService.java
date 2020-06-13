package cn.lys.service;

import java.util.List;
import java.util.Map;

import cn.lys.domain.PageBean;
import cn.lys.domain.User;
/**
 * 用户管理的业务接口
 */
public interface UserService {

    /**
     * 查询所有用户信息
     * @return
     */
    public List<User> findAll();

    /**
     * 登录方法
     * @param user
     * @return
     */
    User login(User user);

    User findUserById(String id);

    /**
     * 保存对象
     * @param user
     */
    void addUser(User user);

    /**
     * 根据id删除User
     * @param id
     */

    void deleteUser(String id);

    /**
     * 修改用户信息
     * @param user
     */
    void updateUser(User user);

    void delSelectedUser(String[] uids);

    /**
     * 分页条件查询
     * @param currentPage
     * @param rows
     * @param condition
     * @return
     */
    PageBean<User> findUserByPage(String currentPage, String rows, Map<String, String[]> condition);

    /**
     * 判断是否是管理员用户
     * @param username
     * @return
     */
    boolean isRoot(String username);

}
