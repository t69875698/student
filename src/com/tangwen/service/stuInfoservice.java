package com.tangwen.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tangwen.model.stuInfo;

public class stuInfoservice {
	private Connection conn;
	private PreparedStatement pstmt;

	public stuInfoservice() {
		conn = new com.tangwen.conn.conn().getcon();
	}

	public boolean addStu(stuInfo stu) {
		try {
			pstmt = conn
					.prepareStatement("insert into studentinfo"
							+ "(nickname,realname,sex,birthday,profession,course,interest,note) "
							+ "values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, stu.getNickname());
			pstmt.setString(2, stu.getRealname());
			pstmt.setByte(3, stu.getSex());
			pstmt.setString(4, stu.getBirthday());
			pstmt.setString(5, stu.getProfession());
			pstmt.setString(6, stu.getCourses());
			pstmt.setString(7, stu.getInterests());
			pstmt.setString(8, stu.getNote());

			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public List queryAllStu() {
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from studentinfo");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setNickname(rs.getString(2));
				stu.setRealname(rs.getString(3));
				stu.setSex(rs.getByte(4));
				if (rs.getDate(5) != null)
					stu.setBirthday(rs.getDate(5).toString());
				stu.setProfession(rs.getString(6));
				if (rs.getString(7) != null)
					stu.setCourse(rs.getString(7).split("&"));
				if (rs.getString(8) != null)
					stu.setInterest(rs.getString(8).split("&"));
				stu.setNote(rs.getString(9));
				stus.add(stu);

			}
			return stus;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	
	public stuInfo queryStubyID(int id) {
		/*List stus = new ArrayList();*/
		try {
			pstmt = conn.prepareStatement("select * from studentinfo where id=?");
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				stuInfo stu = new stuInfo();
				stu.setId(rs.getInt(1));
				stu.setNickname(rs.getString(2));
				stu.setRealname(rs.getString(3));
				stu.setSex(rs.getByte(4));
				if (rs.getDate(5) != null)
					stu.setBirthday(rs.getDate(5).toString());
				stu.setProfession(rs.getString(6));
				if (rs.getString(7) != null)
					stu.setCourse(rs.getString(7).split("&"));
				if (rs.getString(8) != null)
					stu.setInterest(rs.getString(8).split("&"));
				stu.setNote(rs.getString(9));
				/*stus.add(stu);*/
				return stu;
			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	
	public boolean updateStu(stuInfo stu) {

		try {
			pstmt = conn
					.prepareStatement("update  studentinfo set nickname=? , realname=? , sex=? ,birthday=? ,"
							+ " profession=? ,course=? , interest=?, note=?   where id=?");
			pstmt.setString(1, stu.getNickname());
			pstmt.setString(2, stu.getRealname());
			pstmt.setByte(3, stu.getSex());
			pstmt.setString(4, stu.getBirthday());
			pstmt.setString(5, stu.getProfession());
			pstmt.setString(6, stu.getCourses());
			pstmt.setString(7, stu.getInterests());
			pstmt.setString(8, stu.getNote());
			pstmt.setInt(9, stu.getId());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public Boolean deleteStu(int id) {

		try {
			pstmt = conn.prepareStatement("delete from  studentinfo where id=?");
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.getStackTrace();
			return false;
		}

	}
}
