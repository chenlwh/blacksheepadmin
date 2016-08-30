/**
 * @author: chenlwh
 * @date: Aug 8, 2016 3:54:24 PM
 * @description:All Right Reserved for Party Service.
 */
package com.party.util;

import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * 
 */
public class PartyUtil {
	public final static String NORMAL = "1";
	
	public final static String MANAGER = "0";
	public final static String PLAYER = "1";
	public final static String USER = "2";
	
	public final static String SUCCESS = "success";
	public final static String FAILURE = "failure";
	
	
	public static final String getKeyID() {
		String uuid = UUID.randomUUID().toString().toUpperCase().trim();
		uuid = uuid.replaceAll("-", "");
		return uuid;
	}
	
	public static final String getCurrentDateString(){
		Date date=new Date();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		return df.format(date);
	}
	
	public static final String encoding(String code){
		try {
		    MessageDigest md = MessageDigest.getInstance("MD5");
		    byte[] md5 = md.digest(code.getBytes());
		    StringBuffer buffer = new StringBuffer("yy");
		    for(byte b : md5){
		    	buffer.append(b);
		    }
		    return buffer.toString();
		} catch (Exception e) {
		    throw new RuntimeException(e);
		}
	}
	
public static void main(String[] args) {
//	Calendar calendar = Calendar.getInstance();
	System.out.println(encoding("12332332"));
	
	Date date=new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
	System.out.println(df.format(date)); 
}

}
