package cn.itcast.jdbc.example.dao;

import java.lang.reflect.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.example.domain.Admin;
import cn.itcast.jdbc.example.domain.Student;
import cn.itcast.jdbc.example.utils.DataSourceUtils;

public class AdminDao  {
	//登录
	public Admin findUserByUsernameAndPassword(String username, String password) throws SQLException {
		String sql="select * from user where username=? and password=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanHandler<Admin>(Admin.class),username,password);
	}
	//添加学生信息
	public boolean addStudent(Student student) throws SQLException {
		String sql = "insert into student(id,name,address,mobile,sex,grade) values(?,?,?,?,?,?)";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		int num = runner.update(DataSourceUtils.getConnection(),sql, new Object[] { student.getId(), student.getName(),
				student.getSex(), student.getMobile(), student.getAddress(), student.getGrade() });
		if (num > 0)
			return true;
		else
		return false;
	}
	//删除学生信息
	public void deleteStudent(int id) throws SQLException {
		String sql = "DELETE FROM student WHERE id = ?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		runner.update(sql, id);
	}
	//根据学号查找
	@SuppressWarnings("unchecked")
	public ArrayList<Student> findId(int id) throws SQLException {
		String sql="select * from student where id=?";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return   (ArrayList<Student>) runner.query(sql, new BeanListHandler<Student>(Student.class));
	}
	

	//显示所有学生信息
	public List<Student> find() throws SQLException {
		String sql = "select * from student";
		QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
		return runner.query(sql, new BeanListHandler<Student>(Student.class));
	}
	//修改学生信息
	
	
}
