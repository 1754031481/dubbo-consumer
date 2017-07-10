package com.jk.service;

import java.util.List;
import java.util.Map;

import com.jk.model.User;

public interface UserService {
	
	
	
//	投资/借款用户分布饼状图
	public List<Map<String, Object>>  userList(User user);
	
//	平台用户性别比例饼状图
	public List<Map<String, Object>>  userSex(User user);
}
