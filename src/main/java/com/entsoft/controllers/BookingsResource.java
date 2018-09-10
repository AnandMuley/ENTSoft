package com.entsoft.controllers;

import com.entsoft.dtos.BookingDto;
import com.entsoft.dtos.response.ResponseDto;
import com.entsoft.services.BookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value = "bookings")
public class BookingsResource {

    @Autowired
    private BookingService bookingService;

    @PostMapping
    public ResponseEntity create(BookingDto bookingDto) {
        return ResponseEntity.ok(ResponseDto.build("Booking successful !"));
    }

}
