package com.entsoft.beans;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

@Document(collection = "appointments")
public class Appointment {

    @Id
    private String id;
    private String firstName;
    private String lastName;
    private Integer age;
    private String datedOn;
    private String contactNo;
    private Date requestSubmittedOn;
    private String timeSlot;
    private String address;

    private Appointment() {
    }

    public Appointment(Builder builder) {
        id = builder.id;
        age = builder.age;
        datedOn = builder.datedOn;
        contactNo = builder.contactNo;
        requestSubmittedOn = builder.requestSubmittedOn;
        timeSlot = builder.timeSlot;
        address = builder.address;
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

    public Integer getAge() {
        return age;
    }

    public String getDatedOn() {
        return datedOn;
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

    public String getAddress() {
        return address;
    }

    public static class Builder {

        private String id;
        private String firstName;
        private String lastName;
        private Integer age;
        private String datedOn;
        private String contactNo;
        private Date requestSubmittedOn;
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

        public Builder setAge(Integer age) {
            this.age = age;
            return this;
        }

        public Builder setDatedOn(String datedOn) {
            this.datedOn = datedOn;
            return this;
        }

        public Builder setContactNo(String contactNo) {
            this.contactNo = contactNo;
            return this;
        }

        public Builder setRequestSubmittedOn(Date requestSubmittedOn) {
            this.requestSubmittedOn = requestSubmittedOn;
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
                ", age=" + age +
                ", datedOn='" + datedOn + '\'' +
                ", contactNo=" + contactNo +
                ", requestSubmittedOn=" + requestSubmittedOn +
                ", timeSlot='" + timeSlot + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
