package com.CrudMvc.Services;

import java.util.ArrayList;
import java.util.List;
import com.CrudMvc.Model.User;
import com.CrudMvc.Model.Dao.UserDaoImp;


public class UserServicesImp implements UserServices{


	public UserDaoImp userDao;
	
	@Override
	public void userSubmit(User user) {
		
		userDao=new UserDaoImp();
		userDao.userSubmit(user);
		
	}

	@Override
	public List<User> userSearch(String rno) {
		
		List<User> userList=new ArrayList<User>();
		try {
			userDao=new UserDaoImp();
			userList=userDao.userSearch(rno);
			
			return userList;
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
		return userList;
	}

	@Override
	public void userUpdate(User user) {
		
		try {
			userDao=new UserDaoImp();
			userDao.userUpdate(user);
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
	
	}

	@Override
	public void uesrDelete(User uesr) {
		try {
			userDao=new UserDaoImp();
			userDao.userDelete(uesr);
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}

	
		
	

}


/*@Override
public JSONArray userSearch(String rno) {
	
	JSONObject jsonObj = new JSONObject();
	JSONArray jsonArr=new JSONArray();
	UserDaoImp service=new UserDaoImp();
	List<User> userList=new ArrayList<User>();
	
	try {
		userList=service.userSearch(rno);
				
		jsonObj.put("Record", userList);
		jsonArr.add(jsonObj);
		
		//JSONObject j=new JSONObject();
		//j.put("key", jarr);
		System.out.println(jsonArr);
		
		
		Gson gson = new Gson();		
		JSONROOT.put("Results", "OK");
		JSONROOT.put("Record", userList);
		
		
		String json = gson.toJson(JSONROOT);
		//System.out.println(json);
		
		for(int i=0;i<userList.size();i++)
		{
			System.out.println(i);
			System.out.println(userList.get(i));
		}
		
	} catch (Exception e) {
		System.out.println(e);
	}
	
	
	
	return jsonArr;
}
*/


