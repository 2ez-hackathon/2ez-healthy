#!/bin/env ruby
# encoding: utf-8
class ScheduleController < ApplicationController
  def user_input(redirect = false)
    flash[:info] = "Chào mừng bạn đến với hệ thống đặt lịch khám"
    if redirect
      flash[:info] = "Chưa nhập đủ dữ liệu cần thiết"
    end
    render 'user_input'
  end

  def check_user_input
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    @age = params[:age]    
    @location_district = params[:location_district]
    @location_address = "#{params[:location_address]} - #{@location_district}"
    @deparment = params[:deparment]
    @hopital_option = params[:hopital_option]
    @time_1 = params[:time_1]
    @time_2 = params[:time_2]
    @description = params[:description]
    if @name.present? && @phone.present? && @email.present? && @hopital_option.present? && (@time_1.present? || @time_2.present?) && @deparment.present?
      if @time_1.present?
        @time = @time_1
      else
        @time = @time_2
      end
      if @hopital_option == 1
        @hopital_name = params[:hopital_name]
        @hopital_find = Hopital.find(params[:name])
        @hopital_address = "#{@hopital_find.address} - #{@hopital_find.district}"
      else
        @hopital_find = Hopital.find_by(district: @location_district)
        @hopital_name = @hopital_find.name
        @hopital_address = "#{@hopital_find.address} - #{@hopital_find.district}"
      end
      Schedule.create(name_patient: @name, phone_patient: @phone, email_patient: @email, 
          department_patient: @deparment, age_patient: @age, address_patient: @location_address, 
          hopital_patient: @hopital_name, time_patient: @time, description_patient: @description, approve_doctor: false)
      render "check_user_input"
    else
      user_input(true)
    end
  end

  def manage_appointment
    @appointments = Schedule.all
    render "manage_appointment"
  end

  def approve_appointment
    if params[:id].present?
      appointment = Schedule.find(params[:id])
      appointment.update(approve_doctor: true)
    end
    redirect_to manage_appointment_path
  end

  def create_db_hopital
  	Hopital.create(name: "Benh Vien Nguyen Tri Phuong", address: "468 Nguyen Trai Phuong 8", district: "Quan 5")
  	Hopital.create(name: "Benh Vien Cap Cuu Trung Vuong", address: "266 Ly Thuong Kiet Phuong 14", district: "Quan 10")
  	Hopital.create(name: "Benh Vien An Binh", address: "146 An Binh Phuo ng 7", district: "Quan 5")
  	Hopital.create(name: "Benh Vien Da Khoa Sai Gon", address: "125 Le Loi Phuong Ben Thanh", district: "Quan 1")
  	Hopital.create(name: "Benh Vien Quan 1 - Co So 1", address: "338 Hai Ba Trung P. Tan Dinh", district: "Quan 1")
  	Hopital.create(name: "Benh Vien Quan 1 - Co So 2", address: "29 A Cao Ba Nha", district: "Quan 1")
  	Hopital.create(name: "Benh Vien Quan 2", address: "130 Le Van Thinh P.Binh Trung Tay", district: "Quan 2")
  	Hopital.create(name: "Benh Vien Quan 3", address: "114-116 Tran Quoc Thao Phuong 7", district: "Quan 3")
  	Hopital.create(name: "Benh Vien Quan 4", address: "65 Ben Van Don Phuong 12", district: "Quan 4")
  	Hopital.create(name: "Benh Vien Quan 5", address: "644 Nguyen Trai Phuong 11", district: "Quan 5")
  	Hopital.create(name: "Benh Vien Quan 6", address: "A 14/1 Cu Xa Phu Lam P.13", district: "Quan 6")
    puts "-------------------------Create db success-----------------------------------------------"
  end
end
