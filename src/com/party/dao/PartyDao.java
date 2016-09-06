/**
 * @author: chenlwh
 * @date: Jul 27, 2016 4:35:36 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.dao;

import java.util.List;
import java.util.Map;

import com.party.beans.Video;

/**
 * 
 */
public interface PartyDao{
	
	public boolean registerUser(Map<String,String> map);
	public boolean login(Map<String, String> map);
	
	public List<Object> retrieveHotUser();
	public boolean addHotUser(Map<String,String>map);
	
	public boolean videoAdd(Video video);
	public List<Object> videoSummary();
	public boolean videoPrefer(Map<String,String> map);
}
