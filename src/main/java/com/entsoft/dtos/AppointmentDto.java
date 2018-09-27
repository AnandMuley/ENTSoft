package com.entsoft.dtos;

public class AppointmentDto {

    public String firstName;
    public String lastName;
    public String contactNo;

    @Override
    public String toString() {
        return "AppointmentDto{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", contactNo='" + contactNo + '\'' +
                '}';
    }

}
