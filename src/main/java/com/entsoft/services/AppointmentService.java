package com.entsoft.services;

import com.entsoft.dtos.AppointmentDto;
import com.entsoft.mappers.AppointmentMapper;
import com.entsoft.repositories.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

    public List<AppointmentDto> getAppointments() {
        return appointmentRepository.findAll().stream().map(mapper::map).collect(Collectors.toList());
    }
}
