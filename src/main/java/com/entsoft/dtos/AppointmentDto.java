package com.entsoft.dtos;

import java.util.Date;

public class AppointmentDto {

	private String id;
	private String name;
	private int age;
	private long contactNo;
	private String datedOn;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
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

	@Override
	public String toString() {
		return "AppointmentDto [id=" + id + ", name=" + name + ", age=" + age
				+ ", contactNo=" + contactNo + ", datedOn=" + datedOn
				+ ", requestSubmittedOn=" + requestSubmittedOn + ", timeSlot="
				+ timeSlot + ", address=" + address + "]";
	}

}
