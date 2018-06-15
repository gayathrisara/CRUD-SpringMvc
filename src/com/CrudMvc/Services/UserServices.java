package com.CrudMvc.Services;

import java.util.List;

//import java.util.List;

import com.CrudMvc.Model.User;

//import net.minidev.json.JSONArray;

public interface UserServices {
	
	public void userSubmit(User user);
	public List<User> userSearch(String rno);
	//public JSONArray userSearch(String rno);
	
	public void userUpdate(User user);
	public void uesrDelete(User uesr);
	
	
	

}

