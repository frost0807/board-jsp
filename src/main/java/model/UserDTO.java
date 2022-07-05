package model;

public class UserDTO {
	private int id;
	private String username;
	private String password;
	private String nickname;
	
	public boolean equals(Object o) {
		if(o instanceof UserDTO) {
			return this.id==((UserDTO)o).id;
		} else {
			return false;
		}
	}
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
