/**
 * @author: chenlwh
 * @date: Aug 13, 2016 10:36:12 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.action;

import java.util.HashMap;
import java.util.Map;

import com.party.service.RegisterUserService;
import com.party.util.PartyUtil;

/**
 * 
 */
public class RegisterUserAction {
	public String username;
	public String password;
	public String returnMsg;
	
	public RegisterUserService registerUserService;
	
	public String execute(){
		String type = PartyUtil.PLAYER;
		Map <String,String> map = new HashMap<String,String>();
		map.put("userName", username);
		map.put("password", PartyUtil.encoding(password));
		map.put("type", type);
		
		if(registerUserService.registerUser(map)){
			returnMsg = "添加网红成功！";
		}else{
			returnMsg = "添加网红出错。";
		}
		
		return PartyUtil.SUCCESS;
	}

	public String getReturnMsg() {
		return returnMsg;
	}

	public void setReturnMsg(String returnMsg) {
		this.returnMsg = returnMsg;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public RegisterUserService getRegisterUserService() {
		return registerUserService;
	}

	public void setRegisterUserService(RegisterUserService registerUserService) {
		this.registerUserService = registerUserService;
	}
	
	

}
