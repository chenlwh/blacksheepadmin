/**
 * @author: chenlwh
 * @date: Jul 28, 2016 4:55:01 PM
 * @description:All Right Reserved for Party Service.
 */
package com.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.party.beans.Video;
import com.party.util.PartyUtil;

/**
 * 
 */
public class PartyDaoImpl extends SqlMapClientDaoSupport implements PartyDao{
	
	public static final Logger log = Logger.getLogger(PartyDaoImpl.class);

	@SuppressWarnings("rawtypes")
	public boolean registerUser(Map<String, String> map) {
		// TODO Auto-generated method stub
		boolean isSuccess = false;
		String userName = map.get("userName");
		List list = getSqlMapClientTemplate().queryForList("mainTableService.validUser", userName);
		if(list==null || list.size()==0){
			String id = PartyUtil.getKeyID();
			String md5code = PartyUtil.getKeyID();
			String status = PartyUtil.NORMAL;
			String registerDate = PartyUtil.getCurrentDateString();
			String isRemember = "1";
			
			map.put("id", id);
			map.put("md5code", md5code);
			map.put("status", status);
			map.put("registerDate", registerDate);
			map.put("isRemember", isRemember);
			map.put("headImage", "/images/head.jpg");
			
			getSqlMapClientTemplate().insert("mainTableService.registerUser", map);
			getSqlMapClientTemplate().insert("mainTableService.registerUserDetail", map);
			
			isSuccess = true;
		}
		
		return isSuccess;
	}
	
	@SuppressWarnings("rawtypes")
	public boolean login(Map<String, String> map) {
		boolean isSuccess = false;
		List list = getSqlMapClientTemplate().queryForList("mainTableService.login", map);
		if(list!=null && list.size()==1){			
			isSuccess = true;
		}
		
		return isSuccess;
	}
	
	@SuppressWarnings("unchecked")
	public List<Object>retrieveHotUser(){
		return getSqlMapClientTemplate().queryForList("mainTableService.retrieveHotUser");
	}
	
	public boolean addHotUser(Map<String, String> map) {
		boolean isSuccess = false;
		String hotUser = map.get("hotUser");
		getSqlMapClientTemplate().delete("mainTableService.validHotUser", hotUser);
		map.put("id", PartyUtil.getKeyID());
		getSqlMapClientTemplate().insert("mainTableService.addHotUser", map);
		isSuccess = true;
		
		return isSuccess;
	}
	
	public boolean videoAdd(Video video) {
		boolean isSuccess = false;
		video.setVideoID(PartyUtil.getKeyID());
		video.setDate(PartyUtil.getCurrentDateString());
		getSqlMapClientTemplate().insert("mainTableService.videoAdd", video);
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("id", PartyUtil.getKeyID());
		map.put("vedioID", video.getVideoID());
		map.put("userID", video.getVideoOwner());
		getSqlMapClientTemplate().insert("mainTableService.videoPublish", map);
		isSuccess = true;		
		return isSuccess;
	}
	@SuppressWarnings("unchecked")
	public List<Object>videoSummary(){
		return getSqlMapClientTemplate().queryForList("mainTableService.videoSummary");
	}
	
	public boolean videoPrefer(Map<String, String> map) {
		boolean isSuccess = false;
		String videoID = map.get("videoID");
		getSqlMapClientTemplate().delete("mainTableService.validPreferVideo", videoID);
		map.put("id", PartyUtil.getKeyID());
		getSqlMapClientTemplate().insert("mainTableService.videoPrefer", map);
		isSuccess = true;
		
		return isSuccess;
	}
}
