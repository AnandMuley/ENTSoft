package com.entsoft.beans;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "appointments")
public class Appointment {

	@Id
	private String id;
	private String name;
	private Integer age;
	private String datedOn;
	private long contactNo;
	private Date requestSubmittedOn;
	private String timeSlot;
	private String address;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getDatedOn() {
		return datedOn;
	}

	public void setDatedOn(String datedOn) {
		this.datedOn = datedOn;
	}

	public Date getRequestSubmittedOn() {
		return requestSubmittedOn;
	}

	public void setRequestSubmittedOn(Date requestSubmittedOn) {
		this.requestSubmittedOn = requestSubmittedOn;
	}

	public String getTimeSlot() {
		return timeSlot;
	}

	public void setTimeSlot(String timeSlot) {
		this.timeSlot = timeSlot;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", name=" + name + ", age=" + age
				+ ", datedOn=" + datedOn + ", contactNo=" + contactNo
				+ ", requestSubmittedOn=" + requestSubmittedOn + ", timeSlot="
				+ timeSlot + ", address=" + address + "]";
	}

}
