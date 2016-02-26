package com.entsoft.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.entsoft.beans.UserBean;

public interface UserRepository extends MongoRepository<UserBean, String> {

	UserBean findByUsernameAndPassword(String username, String password);

}
