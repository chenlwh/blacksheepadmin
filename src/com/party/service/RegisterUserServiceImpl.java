/**
 * @author: chenlwh
 * @date: Aug 14, 2016 2:32:43 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.service;

import java.util.Map;

import com.admin.dao.PartyDao;

/**
 * 
 */
public class RegisterUserServiceImpl implements RegisterUserService {
	public PartyDao partyDao;

	@Override
	public boolean registerUser(Map<String, String> map) {
		// TODO Auto-generated method stub
		return partyDao.registerUser(map);
	}

	public PartyDao getPartyDao() {
		return partyDao;
	}

	public void setPartyDao(PartyDao partyDao) {
		this.partyDao = partyDao;
	}

}
