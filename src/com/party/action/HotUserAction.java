/**
 * @author: chenlwh
 * @date: Aug 29, 2016 4:47:47 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.party.util.PartyUtil;

/**
 * 
 */
public class HotUserAction extends BaseAction{
	
	public List<Object> hotUserList;
	public String hotUser;
	public String series;

	public String execute(){
		hotUserList = partyDao.retrieveHotUser();
		return PartyUtil.SUCCESS;
	}
	
	public String add(){
		Map<String,String> map = new HashMap<String,String>();
		map.put("hotUser", hotUser);
		map.put("series", series);
		partyDao.addHotUser(map);
		returnMsg = "推荐网红成功！";
		return PartyUtil.SUCCESS;
	}

	public List<Object> getHotUserList() {
		return hotUserList;
	}

	public void setHotUserList(List<Object> hotUserList) {
		this.hotUserList = hotUserList;
	}

	public String getHotUser() {
		return hotUser;
	}

	public void setHotUser(String hotUser) {
		this.hotUser = hotUser;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}
	
}
