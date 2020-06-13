package cn.lys.dao;

import cn.lys.domain.User;

import java.util.List;
import java.util.Map;

/**
 * 用户操作的DAO
 */
public interface UserDao {
    public List<User> findAll();
    User findUserByUsernameAndPassword(String username, String password);
    User findById(int id);

    void add(User user);

    void delete(int parseInt);

    void update(User user);

    int findTotalCount(Map<String, String[]> condition);

    List<User> findByPage(int start, int rows, Map<String, String[]> condition);

    boolean selectIdentityByUsername(String username);
}
