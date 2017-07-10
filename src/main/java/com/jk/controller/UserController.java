package com.jk.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jk.model.User;
import com.jk.service.UserService;
import com.jk.util.Json;

@Controller
@RequestMapping("userController")
public class UserController  extends BaseController{
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("findUserPeople")
	public void findUserPeople(User user,HttpServletResponse response){
		Json j=new Json();
		List<Map<String, Object>> userList = userService.userList(user);
		List<Map<String, Object>> userSex = userService.userSex(user);
		List<Map<String, Object>> map=new ArrayList<>();
		for (Map<String, Object> map2 : userList) {
			Map<String, Object> map3=new HashMap<>();
			map3.put("name", map2.get("PEOPLE"));
			map3.put("y", map2.get("Y"));
			map.add(map3);
		}
		j.setSuccess(true);
		j.setObject(map);
		super.writeJson(j, response);
	}
	
	@RequestMapping("findUserSex")
	public void findUserSex(User user,HttpServletResponse response){
		Json j=new Json();
		List<Map<String, Object>> userSex = userService.userSex(user);
		List<Map<String, Object>> map=new ArrayList<>();
		for (Map<String, Object> map2 : userSex) {
			Map<String, Object> sexMap=new HashMap<>();
			sexMap.put("name", map2.get("SEX"));
			sexMap.put("y", map2.get("SEXY"));
			map.add(sexMap);
		}
		j.setSuccess(true);
		j.setObject(map);
		super.writeJson(j, response);
	}
}
