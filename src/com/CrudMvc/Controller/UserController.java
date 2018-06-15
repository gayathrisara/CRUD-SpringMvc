package com.CrudMvc.Controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.CrudMvc.Model.User;
import com.CrudMvc.Services.UserServices;
import com.CrudMvc.Services.UserServicesImp;

@Controller
public class UserController {
	
	public UserServices userServ;
	
	@RequestMapping(value="/userSave",method = RequestMethod.POST)
	
	/*public ModelAndView submit(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("user") User user){*/
	public String submitUser(@ModelAttribute("user") User user,@RequestParam String action,Model model){
		
		/*System.out.println(user.getRno());
		System.out.println(user.getUname());
		System.out.println(user.getMark());
		System.out.println(user.getAddress());
		System.out.println(user.getMblno());*/
		
		userServ=new UserServicesImp();
		switch(action.toLowerCase())
		{
		case "submit":
			userServ.userSubmit(user);
			break;
		case "update":
			userServ.userUpdate(user);
			break;
		case "delete":
			userServ.uesrDelete(user);
			break;
		default:
				break;
		}
		
		return "user";
	}
	
	@RequestMapping(value="/userSearch/{search}",method=RequestMethod.GET,produces="application/json")
	public @ResponseBody List<User> userList(@PathVariable("search") String searchuser){
		
		userServ=new UserServicesImp();
		List<User> userList=new ArrayList<User>();
		userList = userServ.userSearch(searchuser);		
		return userList;
	}

}
