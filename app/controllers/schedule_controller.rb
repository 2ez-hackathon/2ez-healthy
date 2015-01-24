#!/bin/env ruby
# encoding: utf-8
class ScheduleController < ApplicationController
  def user_input
  	@message = "Hello, how are you today?"
  end

  def check_user_input
  	@message1 = params[:q]
  	puts @message1
  	puts "----------------------"
  	render 'user_input'
  end

  def create_db_hopital
  	Hopital.create(name: "Benh Vien Nguyen Tri Phuong", address: "468 Nguyen Trai Phuong 8", district: "Quan 5")
  	Hopital.create(name: "Benh Vien Cap Cuu Trung Vuong", address: "266 Ly Thuong Kiet Phuong 14", district: "Quan 10")
  	Hopital.create(name: "Benh Vien An Binh", address: "146 An Binh Phuong 7", district: "Quan 5")
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
