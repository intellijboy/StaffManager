/**
 * Copyright (C) 2002-2016 江西财经大学软通学院
 * 文件名：cn.edu.jxufe.junitTestMysqlConnect.java
 * 作  者：刘卜铷
 * 日  期：2016年11月30日 下午8:22:02
 * 描  述：
 * 版  本：1.0
 */
package cn.edu.jxufe.junit;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

import cn.edu.jxufe.dao.DepartmentMapper;
import cn.edu.jxufe.entity.Department;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:spring/*.xml" })
public class TestMysqlConnect {

	@Autowired
	DataSource dataSource;
	
	@Autowired
	DepartmentMapper departmentDao;

	@Test
	public void testCon() throws SQLException {
			System.out.println(dataSource.getConnection());
	}
	
	@Test
	public void testSelectEmploy(){
		Department department = departmentDao.selectByPrimaryKey(1001);
		System.out.println(JSON.toJSON(department));
	}
}
