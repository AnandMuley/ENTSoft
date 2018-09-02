package com.entsoft.repositories;

import com.entsoft.beans.AppointmentBean;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.Date;
import java.util.List;

public interface AppointmentRepository extends MongoRepository<AppointmentBean, String> {

	//    @Query(value = "{'requestSubmittedOn':'?0'}")
	List<AppointmentBean> findByRequestSubmittedOnAfter(Date requestSubmittedOn);

}
