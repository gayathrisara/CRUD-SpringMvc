package com.CrudMvc.Model.Dao;

import java.util.List;

import com.CrudMvc.Model.User;

public interface UserDao {
	
	public void userSubmit(User user);
		
	public List<User> userSearch(String rno);
	
	public void userUpdate(User user);
	
	public void userDelete(User user);

}
