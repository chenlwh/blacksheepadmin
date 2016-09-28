/**
 * @author: chenlwh
 * @date: Aug 18, 2016 5:13:33 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.admin.dao.PartyDao;
import com.party.util.PartyUtil;

/**
 * 
 */
public class LoginAction {
	public String username;
	public String password;
	public String returnMsg;
	
	public PartyDao partyDao;
	
	public String execute(){
		String type = PartyUtil.MANAGER;
		Map <String,String> map = new HashMap<String,String>();
		map.put("userName", username);
		map.put("password", "yy-"+password);
		map.put("type", type);
		
		if(partyDao.login(map)){
			HttpSession session=ServletActionContext.getRequest().getSession();
			session.setAttribute("login", username);
			return PartyUtil.SUCCESS;
		}else{
			returnMsg = "用户名或者密码不正确！";
			return PartyUtil.FAILURE;
		}
		
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

	public PartyDao getPartyDao() {
		return partyDao;
	}

	public void setPartyDao(PartyDao partyDao) {
		this.partyDao = partyDao;
	}
	

}
