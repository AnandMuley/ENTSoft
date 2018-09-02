package com.entsoft.beans;

import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Document(collection = "appointments")
public class AppointmentBean extends UserBean {

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
        return "AppointmentBean{" +
                "id='" + id + '\'' +
                ", requestSubmittedOn=" + requestSubmittedOn +
                ", bookingId='" + bookingId + '\'' +
                '}';
    }

}
