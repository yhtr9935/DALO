package com.company.DTO;

public class LoginDTO {
	private String id;
	private String pw;
	private boolean useAutoLogin;
	@Override
	public String toString() {
		return "로긴DTO[id=" + id + ", pw=" + pw + ", useAutoLogin=" + useAutoLogin + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public boolean isUseAutoLogin() {
		return useAutoLogin;
	}
	public void setUseAutoLogin(boolean useAutoLogin) {
		this.useAutoLogin = useAutoLogin;
	}

}
