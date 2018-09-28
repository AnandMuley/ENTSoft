package com.entsoft.dtos;

public class AppointmentDto {

    public String firstName;
    public String lastName;
    public String contactNo;

    public AppointmentDto(Builder builder) {
        firstName = builder.firstName;
        lastName = builder.lastName;
        contactNo = builder.contactNo;
    }

    public static class Builder {

        private String firstName;
        private String lastName;
        private String contactNo;

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
