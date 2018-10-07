package com.entsoft.services;

import com.entsoft.beans.Appointment;
import com.entsoft.dtos.AppointmentDto;
import com.entsoft.mappers.AppointmentMapper;
import com.entsoft.repositories.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private AppointmentMapper mapper;

    public void add(AppointmentDto appointmentDto) {
        appointmentRepository.save(mapper.map(appointmentDto));
    }

    public List<AppointmentDto> getPendingAppointments() {
        LocalDateTime start = LocalDate.now().atStartOfDay();
        LocalDateTime end = LocalDate.now().plusDays(1).atStartOfDay();
        return appointmentRepository.findByDatedOnBetween(start, end).stream().filter($ -> $.getStatus() == Appointment.Status.BOOKED).map(mapper::map).collect(Collectors.toList());
    }

    public void update(String id, Appointment.Status status) {
        Appointment appointment = appointmentRepository.findOne(id);
        appointment.setStatus(Appointment.Status.DONE);
        appointmentRepository.save(appointment);
    }
}
