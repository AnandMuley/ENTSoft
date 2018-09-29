package com.entsoft.services;

import com.entsoft.beans.UserBean;
import com.entsoft.dtos.request.UserDto;
import com.entsoft.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.naming.AuthenticationException;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public UserDto authenticateUser(UserDto userDto) throws AuthenticationException {
        Optional<UserBean> userBean = userRepository.findByUsernameAndPassword(
                userDto.username, userDto.password);
        UserBean foundUser = userBean.orElseThrow(AuthenticationException::new);
        userDto.id = foundUser.getId();
        return userDto;
    }

    public UserDto registerUser(UserDto userDto) {
        UserBean userBean = new UserBean();
        userBean.setPassword(userDto.password);
        userBean.setUsername(userDto.username);
        userRepository.save(userBean);
        userDto.id = userBean.getId();
        return userDto;
    }

}
