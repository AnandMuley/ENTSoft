package com.entsoft.dtos;

import com.entsoft.beans.DatedOn;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class AppointmentDto {

    private String firstName;
    private String lastName;
    private String contactNo;
    private String datedOn;

    public AppointmentDto() {
    }

    public AppointmentDto(Builder builder) {
        firstName = builder.firstName;
        lastName = builder.lastName;
        contactNo = builder.contactNo;
        datedOn = builder.datedOn.getValue().toString();
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getContactNo() {
        return contactNo;
    }

    public String getDatedOn() {
        return datedOn;
    }

    public DatedOn getDatedOnObj() {
        return new DatedOn(LocalDateTime.parse(datedOn, DateTimeFormatter.ISO_DATE_TIME));
    }

    public static class Builder {

        private String firstName;
        private String lastName;
        private String contactNo;
        private DatedOn datedOn;

        public Builder(String firstName, String lastName, String contactNo) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.contactNo = contactNo;
        }

        public Builder setDatedOn(DatedOn datedOn) {
            this.datedOn = datedOn;
            return this;
        }

        public AppointmentDto build() {
            return new AppointmentDto(this);
        }
    }

    @Override
    public String toString() {
        return "AppointmentDto{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", contactNo='" + contactNo + '\'' +
                '}';
    }

}
