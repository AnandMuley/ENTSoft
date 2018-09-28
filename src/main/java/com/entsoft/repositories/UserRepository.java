package com.entsoft.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.entsoft.beans.UserBean;

import java.util.Optional;

public interface UserRepository extends MongoRepository<UserBean, String> {

	Optional<UserBean> findByUsernameAndPassword(String username, String password);

}
