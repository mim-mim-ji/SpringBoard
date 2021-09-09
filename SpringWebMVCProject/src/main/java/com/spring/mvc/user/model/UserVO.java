package com.spring.mvc.user.model;

import java.sql.Timestamp;

public class UserVO {
	
	private String account;
	private String password;
	private String name;
	private Timestamp regDate;
	private String sessionId;
	private Timestamp limitTime;
		

	//자동로그인 체크 여부
	private boolean autoLogin;	
	
	public boolean isAutoLogin() {
		return autoLogin;
	}
	public void setAutoLogin(boolean autoLogin) {
		this.autoLogin = autoLogin;
	}
	
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	
	public String getSessionId() {
		return sessionId;
	}
	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
	public Timestamp getLimitTime() {
		return limitTime;
	}
	public void setLimitTime(Timestamp limitTime) {
		this.limitTime = limitTime;
	}
	
	@Override
	public String toString() {
		return "UserVO [account=" + account + ", password=" + password + ", name=" + name + ", regDate=" + regDate
				+ ", autoLogin=" + autoLogin + "]";
	}
		
	

}
