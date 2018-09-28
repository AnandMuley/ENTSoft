package com.entsoft.dtos.request;

public class UserDto {

	public String id;
	public String username;
	public String password;

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", username=" + username + ", password="
				+ password + "]";
	}

}
