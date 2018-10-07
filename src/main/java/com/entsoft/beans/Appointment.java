package com.entsoft.beans;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.time.LocalDateTime;
import java.util.Date;

@Document(collection = "appointments")
public class Appointment implements Comparable<Appointment> {

    @Id
    private String id;
    private String firstName;
    private String lastName;
    private String contactNo;
    private LocalDateTime datedOn;
    private Date requestSubmittedOn;
    private String timeSlot;
    private String address;
    private Status status;

    public Appointment(Builder builder) {
        id = builder.id;
        firstName = builder.firstName;
        lastName = builder.lastName;
        contactNo = builder.contactNo;
        datedOn = builder.datedOn.getValue();
        requestSubmittedOn = new Date();
        timeSlot = builder.timeSlot;
        address = builder.address;
        status = Status.BOOKED;
    }

    private Appointment() {
    }

    public Status getStatus() {
        return status;
    }

    public String getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public DatedOn getDatedOn() {
        return new DatedOn(datedOn);
    }

    public String getContactNo() {
        return contactNo;
    }

    public Date getRequestSubmittedOn() {
        return requestSubmittedOn;
    }

    public String getTimeSlot() {
        return timeSlot;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public enum Status {
        DONE, CANCELLED, BOOKED
    }

    @Override
    public int compareTo(Appointment o) {
        int result = 0;
        if (requestSubmittedOn.before(o.requestSubmittedOn)) {
            result = 1;
        } else if (requestSubmittedOn.after(o.requestSubmittedOn)) {
            result = -1;
        }
        return result;
    }

    public static class Builder {

        private String id;
        private String firstName;
        private String lastName;
        private DatedOn datedOn;
        private String contactNo;
        private String timeSlot;
        private String address;

        public Builder setId(String id) {
            this.id = id;
            return this;
        }

        public Builder setFirstName(String firstName) {
            this.firstName = firstName;
            return this;
        }

        public Builder setLastName(String lastName) {
            this.lastName = lastName;
            return this;
        }

        public Builder setDatedOn(DatedOn datedOn) {
            this.datedOn = datedOn;
            return this;
        }

        public Builder setContactNo(String contactNo) {
            this.contactNo = contactNo;
            return this;
        }

        public Builder setTimeSlot(String timeSlot) {
            this.timeSlot = timeSlot;
            return this;
        }

        public Builder setAddress(String address) {
            this.address = address;
            return this;
        }

        public Appointment build() {
            return new Appointment(this);
        }
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "id='" + id + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", datedOn='" + datedOn + '\'' +
                ", contactNo=" + contactNo +
                ", requestSubmittedOn=" + requestSubmittedOn +
                ", timeSlot='" + timeSlot + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
