package com.entsoft.resources;

import com.entsoft.dtos.AppointmentDto;
import com.entsoft.dtos.response.ResponseDto;
import com.entsoft.services.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "appointments")
public class AppointmentResource {

    @Autowired
    private AppointmentService appointmentService;

    @PostMapping
    public ResponseEntity create(AppointmentDto appointmentDto) {
        appointmentService.add(appointmentDto);
        return ResponseEntity.ok(ResponseDto.build("Booking successful !"));
    }

    @GetMapping
    public ResponseEntity getAll() {
        return ResponseEntity.ok(appointmentService.getAppointments());
    }


}
