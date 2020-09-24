package servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.itcast.jdbc.example.dao.AdminDao;
import cn.itcast.jdbc.example.domain.Student;


public class DeleteStudentServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		int id = Integer.parseInt(req.getParameter("id"));
		AdminDao adminDao = new AdminDao();
		adminDao.deleteStudent(id);
		req.getRequestDispatcher("index.jsp").forward(req, resp);
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}

