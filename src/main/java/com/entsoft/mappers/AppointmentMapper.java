package com.entsoft.mappers;

import com.entsoft.beans.Appointment;
import com.entsoft.dtos.AppointmentDto;
import org.springframework.stereotype.Component;

@Component
public class AppointmentMapper {

    public Appointment map(AppointmentDto appointmentDto) {
        Appointment appointment = new Appointment.Builder()
                .setFirstName(appointmentDto.getFirstName())
                .setLastName(appointmentDto.getLastName())
                .setContactNo(appointmentDto.getContactNo())
                .build();
        return appointment;
    }

    public AppointmentDto map(Appointment appointment) {
        return new AppointmentDto.Builder(appointment.getFirstName(), appointment.getLastName(), appointment.getContactNo()).build();
    }

}
