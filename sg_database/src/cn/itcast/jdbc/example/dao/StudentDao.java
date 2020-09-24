package cn.itcast.jdbc.example.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.itcast.jdbc.example.domain.Student;
import cn.itcast.jdbc.example.utils.DataSourceUtils;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class StudentDao {



		//登录
		public Student findUserByUsernameAndPassword(String username, String password) throws SQLException {
			String sql="select * from student where username=? and password=?";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			return runner.query(sql, new BeanHandler<Student>(Student.class),username,password);
		}

		//根据学号查找
		@SuppressWarnings("unchecked")
		public ArrayList<Student> findId(int id) throws SQLException {
			String sql="select * from student where id=?";
			QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
			return (ArrayList<Student>) runner.query(sql, new BeanListHandler<Student>(Student.class));
		}



	}


