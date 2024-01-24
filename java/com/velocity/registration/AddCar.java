package com.velocity.registration;

public class AddCar {

	int id , Lug_cot;
	String Modal , Year , License , seats , Gear_Type , Car_img , userid;
	
	public AddCar() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AddCar(int id, int lug_cot, String modal, String year, String license, String seats, String gear_Type,
			String car_img, String userid) {
		super();
		this.id = id;
		Lug_cot = lug_cot;
		Modal = modal;
		Year = year;
		License = license;
		this.seats = seats;
		Gear_Type = gear_Type;
		Car_img = car_img;
		this.userid = userid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLug_cot() {
		return Lug_cot;
	}

	public void setLug_cot(int lug_cot) {
		Lug_cot = lug_cot;
	}

	public String getModal() {
		return Modal;
	}

	public void setModal(String modal) {
		Modal = modal;
	}

	public String getYear() {
		return Year;
	}

	public void setYear(String year) {
		Year = year;
	}

	public String getLicense() {
		return License;
	}

	public void setLicense(String license) {
		License = license;
	}

	public String getSeats() {
		return seats;
	}

	public void setSeats(String seats) {
		this.seats = seats;
	}

	public String getGear_Type() {
		return Gear_Type;
	}

	public void setGear_Type(String gear_Type) {
		Gear_Type = gear_Type;
	}

	public String getCar_img() {
		return Car_img;
	}

	public void setCar_img(String car_img) {
		Car_img = car_img;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	
}
