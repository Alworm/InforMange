package cn.lys.dao.impl;

import cn.lys.dao.UserDao;
import cn.lys.domain.User;
import cn.lys.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class UserDaoImpl implements UserDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<User> findAll() {
        //使用JDBC操作数据库...
        //1.定义sql
        String sql = "select * from user";
        List<User> users = template.query(sql, new BeanPropertyRowMapper<User>(User.class));
        return users;
    }

    @Override
    public User findUserByUsernameAndPassword(String username, String password) {
        if (username.isEmpty()){
            return null;
        }
        if (password.isEmpty()){
            return null;
        }
        try {
            String sql = "select * from user where username = ? and password = ?";
            User user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), username, password);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public User findById(int id) {
        String sql = "select * from user where id = ?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id);
    }

    @Override
    public void add(User user) {

        String sql = "insert into user(id,name,gender,age,address,qq,email,username,password) values(null,?,?,?,?,?,?,null,null)";
        template.update(sql,user.getName(),user.getGender(),user.getAge(),user.getAddress(),user.getQq(),user.getEmail());

    }

    @Override
    public void delete(int id) {
        String sql = "delete from user where id = ?";
        template.update(sql,id);
    }

    @Override
    public void update(User user) {
        String sql = "update user set name =?,gender =?, age = ?," +
                "address = ?, qq=?, email=? where id = ?";
        template.update(sql,user.getName(),user.getGender(),
                user.getAge(),user.getAddress(),user.getQq(),user.getEmail(),user.getId());
    }

    @Override
    public int findTotalCount(Map<String, String[]> condition) {
        //定义一个模板sql
        String sql = "select count(*) from user where 1 = 1 ";
        StringBuilder sb = new StringBuilder(sql);
        //遍历map
        Set<String> set = condition.keySet();
        List<Object> params = new ArrayList<Object>();
        for (String key : set) {
            if ("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }
            String value = condition.get(key)[0];
//            System.out.println("value"+value);
            //判断使用有值
            if (value != null && !"".equals(value)){
                sb.append(" and "+key+" like ? ");
                params.add("%"+value+"%");//添加条件的值
            }
        }
//        System.out.println("sb.toString"+sb.toString());
//        System.out.println(params);
        return template.queryForObject(sb.toString(), Integer.class,params.toArray());//可变参，转换为数组
    }

    @Override
    public List<User> findByPage(int start, int rows, Map<String, String[]> condition) {
        String sql = "select * from user where 1 = 1 ";
        StringBuilder sb = new StringBuilder(sql);
        //遍历map
        Set<String> set = condition.keySet();
        List<Object> params = new ArrayList<Object>();
        for (String key : set) {
            if ("currentPage".equals(key) || "rows".equals(key)){
                continue;
            }
            String value = condition.get(key)[0];
//            System.out.println("value"+value);
            //判断使用有值
            if (value != null && !"".equals(value)){
                sb.append(" and "+key+" like ? ");
                params.add("%"+value+"%");//添加条件的值
            }
        }
        sb.append(" limit ?,? ");
        //添加分页查询参数值
        params.add(start);
        params.add(rows);

        sql = sb.toString();
        List<User> list = null;
        try {
            list = template.query(sql, new BeanPropertyRowMapper<User>(User.class), params.toArray());
        } catch (Exception e) {
            System.out.println("userDaoImplFindByPageException");
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean selectIdentityByUsername(String username) {
        User user = null;
        if (username.isEmpty()){
            return false;
        }
        try {
            String sql = "select identity from user where username = ?";
            user = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class),username);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        System.out.println(user.getIdentity());
        if (user.getIdentity()!=1){
            System.out.println(user.getIdentity());
            return false;
        }

        return true;
    }
}
