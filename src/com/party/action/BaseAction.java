/**
 * @author: chenlwh
 * @date: Aug 29, 2016 4:11:02 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.action;

import com.admin.dao.PartyDao;

/**
 * 
 */
public class BaseAction {
	public PartyDao partyDao;
	
	public String returnMsg;
	
//	public String execute(){
//
//		service();
//		return PartyUtil.FAILURE;
//	}
//	
//	protected abstract String service();

	public PartyDao getPartyDao() {
		return partyDao;
	}

	public void setPartyDao(PartyDao partyDao) {
		this.partyDao = partyDao;
	}

	public String getReturnMsg() {
		return returnMsg;
	}

	public void setReturnMsg(String returnMsg) {
		this.returnMsg = returnMsg;
	}


	
	

}
