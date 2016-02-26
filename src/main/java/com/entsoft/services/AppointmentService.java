package com.entsoft.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entsoft.beans.Appointment;
import com.entsoft.dtos.AppointmentDto;
import com.entsoft.repositories.AppointmentRepository;

@Service
public class AppointmentService {

	@Autowired
	private AppointmentRepository appointmentRepository;

	public AppointmentDto create(AppointmentDto appointmentDto) {
		Appointment appointment = new Appointment();
		appointment.setAddress(appointmentDto.getAddress());
		appointment.setAge(appointmentDto.getAge());
		appointment.setDatedOn(appointmentDto.getDatedOn());
		Date now = new Date();
		appointment.setName(appointmentDto.getName());
		appointment.setRequestSubmittedOn(now);
		appointment.setTimeSlot(appointmentDto.getTimeSlot());
		appointment.setContactNo(appointmentDto.getContactNo());
		appointmentRepository.save(appointment);
		appointmentDto.setId(appointment.getId());
		return appointmentDto;
	}

	public List<AppointmentDto> getAppointmentsFor(String datedOn) {
		List<Appointment> appointments = appointmentRepository
				.findByDatedOn(datedOn);
		List<AppointmentDto> appointmentDtos = new ArrayList<AppointmentDto>();
		for (Appointment appointment : appointments) {
			AppointmentDto appointmentDto = new AppointmentDto();
			appointmentDto.setAddress(appointment.getAddress());
			appointmentDto.setAge(appointment.getAge());
			appointmentDto.setContactNo(appointment.getContactNo());
			appointmentDto.setDatedOn(appointment.getDatedOn());
			appointmentDto.setId(appointment.getId());
			appointmentDto.setName(appointment.getName());
			appointmentDto.setRequestSubmittedOn(appointment
					.getRequestSubmittedOn());
			appointmentDto.setTimeSlot(appointment.getTimeSlot());
			appointmentDtos.add(appointmentDto);
		}
		return appointmentDtos;
	}

}
