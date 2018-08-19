package com.entsoft.repositories;

import com.entsoft.beans.Appointment;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.List;

public interface AppointmentRepository extends
		MongoRepository<Appointment, String> {

    @Query(value = "{'datedOn':'?0'}")
	List<Appointment> findByDatedOn(String datedOn);

}
