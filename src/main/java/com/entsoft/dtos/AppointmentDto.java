package com.entsoft.dtos;

import java.util.Date;

public class AppointmentDto extends UserDto {

    private Date requestSubmittedOn;
    private String bookingId;

    public Date getRequestSubmittedOn() {
        return requestSubmittedOn;
    }

    public void setRequestSubmittedOn(Date requestSubmittedOn) {
        this.requestSubmittedOn = requestSubmittedOn;
    }

    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    @Override
    public String toString() {
        return "AppointmentDto{" +
                "id='" + id + '\'' +
                ", requestSubmittedOn=" + requestSubmittedOn +
                ", bookingId='" + bookingId + '\'' +
                '}';
    }
}
