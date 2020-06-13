package cn.lys.service.impl;

import cn.lys.dao.UserDao;
import cn.lys.dao.impl.UserDaoImpl;
import cn.lys.domain.PageBean;
import cn.lys.domain.User;
import cn.lys.service.UserService;
import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();
    @Override
    public List<User> findAll() {
        //调用Dao完成查询
        return dao.findAll();
    }

    @Override
    public User login(User user) {

        return dao.findUserByUsernameAndPassword(user.getUsername(),user.getPassword());
    }

    @Override
    public User findUserById(String id) {

        return dao.findById(Integer.parseInt(id));
    }

    @Override
    public void addUser(User user) {
        dao.add(user);
    }

    @Override
    public void deleteUser(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
        dao.update(user);
    }

    @Override
    public void delSelectedUser(String[] uids) {
        if (uids!=null && uids.length>0){
            for (String uid : uids) {
                dao.delete(Integer.parseInt(uid));
            }
        }
    }

    @Override
    public PageBean<User> findUserByPage(String _currentPage, String _rows, Map<String, String[]> condition) {
        PageBean<User> pageBean = new PageBean<User>();
        int currentPage = Integer.parseInt(_currentPage);//后面会修改现在不能赋值
        int rows = Integer.parseInt(_rows);
        pageBean.setRows(rows);

        pageBean.setRows(rows);
        if (currentPage <= 0){
            currentPage = 1;
        }

        int totalCount = dao.findTotalCount(condition);
        pageBean.setTotalCount(totalCount);

        int totalPage = (totalCount % rows) ==0 ? totalCount/rows : (totalCount/rows) + 1;

        pageBean.setTotalPage(totalPage);
        if (currentPage >= totalPage){
            currentPage = totalPage;
        }

        pageBean.setCurrentPage(currentPage);

        //计算开始的记录索引
        int start = (currentPage - 1) * rows;
        List<User> list = dao.findByPage(start,rows,condition);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public boolean isRoot(String username) {
        return dao.selectIdentityByUsername(username);
    }


}
