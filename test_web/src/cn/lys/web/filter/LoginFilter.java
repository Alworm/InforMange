package cn.lys.web.filter;
/*
    登录验证的过滤器
*/
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
// /*
@WebFilter(urlPatterns = { "/add.jsp","/list.jsp","/login.jsp","/unroot.jsp","/update.jsp",
        "/addUserServlet","/checkCode","/delSelectedServlet","/delUserServlet",
        "/findUserByPageServlet","/findUserServlet","/LoginServlet","/updateUserServlet",
        "/userListServlet",})
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        System.out.println("filter");
        String uri = request.getRequestURI();
        if (uri.contains("/login.jsp") || uri.contains("/LoginServlet") || uri.contains("/css/") || uri.contains("/js/") || uri.contains("/checkCode")){
            chain.doFilter(req,resp);
        }else{
            Object user = request.getSession().getAttribute("user");
            if (user!=null){
                chain.doFilter(req,resp);
            }else{
                request.setAttribute("login_msg","您尚未登录，请先登录");
                request.getRequestDispatcher("/login.jsp").forward(req,resp);
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
