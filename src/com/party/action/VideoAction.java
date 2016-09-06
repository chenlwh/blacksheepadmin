/**
 * @author: chenlwh
 * @date: Aug 30, 2016 5:28:17 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.party.beans.Video;
import com.party.util.PartyUtil;

/**
 * 
 */
public class VideoAction extends BaseAction {
	public Video video;
	public List<Object> videoList;
	public List<Object> hotUserList;
	
	public String videoID;
	public String series;
	
	public String execute(){
		partyDao.videoAdd(video);
		returnMsg = "添加视频成功！";
		
		return PartyUtil.SUCCESS;
	}
	
	public String load(){
		hotUserList = partyDao.retrieveHotUser();
		return PartyUtil.SUCCESS;
	}
	
	public String summary(){
		videoList = partyDao.videoSummary();
		
		return PartyUtil.SUCCESS;
	}
	
	public String prefer(){
		Map <String,String> map = new HashMap<String,String>();
		map.put("videoID", videoID);
		map.put("series", series);
		partyDao.videoPrefer(map);
		
		returnMsg = "推荐视频成功！";
		return PartyUtil.SUCCESS;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public List<Object> getVideoList() {
		return videoList;
	}

	public void setVideoList(List<Object> videoList) {
		this.videoList = videoList;
	}

	public String getVideoID() {
		return videoID;
	}

	public void setVideoID(String videoID) {
		this.videoID = videoID;
	}

	public String getSeries() {
		return series;
	}

	public void setSeries(String series) {
		this.series = series;
	}

	public List<Object> getHotUserList() {
		return hotUserList;
	}

	public void setHotUserList(List<Object> hotUserList) {
		this.hotUserList = hotUserList;
	}
	
	

}
