package com.entsoft.repositories;

import com.entsoft.beans.Appointment;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.time.LocalDateTime;
import java.util.List;

public interface AppointmentRepository extends
        MongoRepository<Appointment, String> {

    //    @Query(value = "{'datedOn':{$gte:'?0',$lt:'?1'}}")
    List<Appointment> findByDatedOnBetween(LocalDateTime startDate, LocalDateTime endDate);

}
