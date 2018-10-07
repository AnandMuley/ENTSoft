package com.entsoft.resources;

import com.entsoft.beans.Appointment;
import com.entsoft.dtos.AppointmentDto;
import com.entsoft.dtos.response.ResponseDto;
import com.entsoft.services.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping(value = "appointments")
public class AppointmentResource {

    @Autowired
    private AppointmentService appointmentService;

    @PostMapping
    public ResponseEntity create(@RequestBody AppointmentDto appointmentDto) {
        appointmentService.add(appointmentDto);
        return ResponseEntity.ok(ResponseDto.build("Booking successful !"));
    }

    @GetMapping
    public ResponseEntity getAllPending() {
        return ResponseEntity.ok(appointmentService.getPendingAppointments());
    }

    @PutMapping("{id}/{status}")
    public ResponseEntity markStatus(@PathVariable("id") String id, @PathVariable("status") Appointment.Status status) {
        appointmentService.update(id, status);
        return ResponseEntity.noContent().build();
    }


}
