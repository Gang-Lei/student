package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.jdbc.example.dao.AdminDao;
import cn.itcast.jdbc.example.domain.Student;


public class ShowStudentServlet extends HttpServlet{

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
		
		AdminDao adminDao = new AdminDao();
		List<Student> student = adminDao.find();
		req.setAttribute("student", student);
		req.getRequestDispatcher("s_list.jsp").forward(
				req, resp);
		return;
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}

