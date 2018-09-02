package com.entsoft.services;

import com.entsoft.beans.AppointmentBean;
import com.entsoft.dtos.AppointmentDto;
import com.entsoft.repositories.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    public AppointmentDto create(AppointmentDto appointmentDto) {
        AppointmentBean appointmentBean = new AppointmentBean();
        appointmentBean.setFirstName(appointmentDto.getFirstName());
        appointmentBean.setLastName(appointmentDto.getLastName());
        appointmentBean.setEmailId(appointmentDto.getEmailId());
        appointmentBean.setContactNo(appointmentDto.getContactNo());
        appointmentBean.setRequestSubmittedOn(new Date());
        appointmentRepository.save(appointmentBean);
        appointmentDto.setId(appointmentBean.getId());
        return appointmentDto;
    }

    public List<AppointmentDto> getAppointmentsForToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        List<AppointmentBean> appointmentBeans = appointmentRepository.findByRequestSubmittedOnAfter(calendar.getTime());
        List<AppointmentDto> appointmentDtos = new ArrayList<AppointmentDto>();
        for (AppointmentBean appointmentBean : appointmentBeans) {
            AppointmentDto appointmentDto = new AppointmentDto();
            appointmentDto.setId(appointmentBean.getId());
            appointmentDto.setFirstName(appointmentBean.getFirstName());
            appointmentDto.setLastName(appointmentBean.getLastName());
            appointmentDto.setEmailId(appointmentBean.getEmailId());
            appointmentDto.setContactNo(appointmentBean.getContactNo());
            appointmentDto.setRequestSubmittedOn(appointmentBean.getRequestSubmittedOn());
            appointmentDtos.add(appointmentDto);
        }
        return appointmentDtos;
    }

}
