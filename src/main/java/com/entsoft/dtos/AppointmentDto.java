package com.entsoft.dtos;

import javax.servlet.http.HttpServletRequest;

public class AppointmentDto {

    private String firstName;
    private String lastName;
    private String contactNo;

    public AppointmentDto() {
    }

    public AppointmentDto(Builder builder) {
        firstName = builder.firstName;
        lastName = builder.lastName;
        contactNo = builder.contactNo;
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

    public static class Builder {

        private String firstName;
        private String lastName;
        private String contactNo;

        public Builder(HttpServletRequest request) {
            firstName = request.getParameter("firstName");
            lastName = request.getParameter("lastName");
            contactNo = request.getParameter("contactNo");
        }

        public Builder(String firstName, String lastName, String contactNo) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.contactNo = contactNo;
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
