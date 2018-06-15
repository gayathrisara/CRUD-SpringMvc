package com.CrudMvc.Model.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.CrudMvc.Configuration.DbConfiguration;
import com.CrudMvc.Model.User;


public class UserDaoImp implements UserDao{

	Connection conn;
	@Override
	public void userSubmit(User user)  {
		// TODO Auto-generated method stub
		try {
			
			conn=DbConfiguration.getSqlConnection();
			PreparedStatement pst=conn.prepareStatement("INSERT INTO `user` (`rno`,`uname`,`address`,`mblno`,`mark`) VALUES(?,?,?,?,?)");
			pst.setString(1, user.getRno());
			pst.setString(2, user.getUname());
			pst.setString(3, user.getAddress());
			pst.setString(4, user.getMblno());
			pst.setInt(5, user.getMark());
			
			pst.execute();
			System.out.println("success");
			pst.close();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.println(e);
			e.printStackTrace();
		}
		
		
	}
	
	@Override
	public List<User> userSearch(String rno) {
		List<User> userList = new ArrayList<User>();
		try {
			
			conn=DbConfiguration.getSqlConnection();
			String qry="SELECT * FROM `user` WHERE rno = '" + rno + "'";
			System.out.println(qry);
			PreparedStatement pst=conn.prepareStatement(qry);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next())
			{
				User userObj= new User();
				
				userObj.setRno(rs.getString("rno"));
				userObj.setUname(rs.getString("uname"));
				userObj.setAddress(rs.getString("address"));
				userObj.setMblno(rs.getString("mblno"));
				userObj.setMark(rs.getInt("mark"));
				
				userList.add(userObj);
			}
			rs.close();
			conn.close();
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return userList;
	}

	@Override
	public void userUpdate(User user) {
		try {
			
			conn=DbConfiguration.getSqlConnection();
			PreparedStatement pst=conn.prepareStatement("UPDATE `user` SET uname=?,address=?,mblno=?,mark=? WHERE rno=?");
			pst.setString(1, user.getUname());
			pst.setString(2,user.getAddress());
			pst.setString(3, user.getMblno());
			pst.setInt(4, user.getMark());
			pst.setString(5, user.getRno());
			
			pst.execute();
			pst.close();
			
			conn.close();
			
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
	}

	@Override
	public void userDelete(User user) {
		try {
			
			conn=DbConfiguration.getSqlConnection();
			PreparedStatement pst=conn.prepareStatement("UPDATE `user` SET status=0 WHERE rno=?");
			pst.setString(1, user.getRno());
			
			pst.execute();
			pst.close();
			
			conn.close();
			
			
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
	}

}
