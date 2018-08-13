package com.entsoft.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entsoft.beans.UserBean;
import com.entsoft.dtos.UserDto;
import com.entsoft.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	public UserDto authenticateUser(UserDto userDto) {
		UserBean userBean = userRepository.findByUsernameAndPassword(
				userDto.getUsername(), userDto.getPassword());
		if (userBean != null) {
			userDto.setId(userBean.getId());
		}
		return userDto;
	}

	public void registerUser(UserDto userDto) {
		UserBean userBean = new UserBean();
		userBean.setFirstName(userDto.getFirstName());
		userBean.setLastName(userDto.getLastName());
		userBean.setUsername(userDto.getUsername());
		userBean.setPassword(userDto.getPassword());
		userBean.setEmailId(userDto.getEmailId());
		userBean.setContactNo(userDto.getContactNo());
		userRepository.save(userBean);
		userDto.setId(userBean.getId());
	}

}
