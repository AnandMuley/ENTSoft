package com.entsoft.resources;

import com.entsoft.dtos.request.UserDto;
import com.entsoft.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.naming.AuthenticationException;

@RestController("authentication")
public class AuthenticationResource {

    @Autowired
    private UserService userService;

    @PostMapping
    public ResponseEntity login(UserDto userDto) throws AuthenticationException {
        return ResponseEntity.ok(userService.authenticateUser(userDto));
    }

}
