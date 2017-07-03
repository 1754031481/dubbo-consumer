package com.jk.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.jk.service.UserService;

public class TestUser {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring-dubbo-consumer.xml");
		UserService userService = (UserService) ac.getBean("userService");
			String queryUser = userService.queryUser("伊芙蕾雅", "女");
			System.out.println("恭喜你： " + queryUser+"成功了");
			userService.queryById("小智", 26);
		
	}
}
