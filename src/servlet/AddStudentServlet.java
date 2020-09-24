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


public class AddStudentServlet extends HttpServlet{

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
		Student student = new Student();
		try {
			req.getParameter("UTF-8");
			BeanUtils.populate(student, req.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		try {
			// 调用AdminDao完成添加操作。
			AdminDao adminDao = new AdminDao();
			if(adminDao.addStudent(student)) {
				req.getRequestDispatcher("index.jsp").forward(req, resp);
			}}catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
