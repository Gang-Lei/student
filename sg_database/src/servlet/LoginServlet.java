package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.jdbc.example.dao.AdminDao;
import cn.itcast.jdbc.example.domain.Admin;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			try {
				// 获取登录页面输入的账号与密码
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				//根据登录时表单输入的账号和密码，查找用户
				AdminDao customerDao = new AdminDao();
				Admin returncustomer = customerDao.findUserByUsernameAndPassword(username, password);
				if (returncustomer != null) {
					request.getSession().setAttribute("customers", returncustomer);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}else {
					request.setAttribute("errorMsg","账号或密码错误");
				
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
				} catch (SQLException e) {
				request.setAttribute("errorMsg","用户登录失败");
				request.getRequestDispatcher("login.jsp").forward(request, response);
				e.printStackTrace();
			}
	}
}
