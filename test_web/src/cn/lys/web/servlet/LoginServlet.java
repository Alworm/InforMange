package cn.lys.web.servlet;

import cn.lys.service.UserService;
import cn.lys.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;
import cn.lys.domain.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式
        request.setCharacterEncoding("utf-8");

        //获取存在session中，CheckCodeServlet生成的验证码
        String verifycode = request.getParameter("verifycode");
        HttpSession session = request.getSession();
        String checkcode_server = (String)session.getAttribute("CHECKCODE_SERVER");
        session.removeAttribute("CHECKCODE_SERVER");//确保验证码的一次性

        //判断验证码是否正确，如果不正确，那么直接返回到原来的页面。
//        if (!checkcode_server.equalsIgnoreCase(verifycode)){
//            request.setAttribute("login_msg","验证码错误");
//            request.getRequestDispatcher("/login.jsp").forward(request,response);
//        }

        Map<String, String[]> parameterMap = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user,parameterMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        System.out.println(user);
//        UserService service = new UserServiceImpl();
//        User loginUser = service.login(user);

        UserService service = new UserServiceImpl();
        User loginUser =  service.login(user);
        boolean identity = service.isRoot(user.getUsername());
        System.out.println("identity"+identity);
        if (loginUser!=null){
            session.setAttribute("user",loginUser);
            if (identity==true){
                response.sendRedirect(request.getContextPath()+"/index.jsp");
            }else {
                response.sendRedirect(request.getContextPath()+"/unroot.jsp");
            }
        }else{
            request.setAttribute("login_msg","用户名或者密码不正确！");
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
