class ScheduleController < ApplicationController
  def user_input
  	@message = "Hello, how are you today?"
  	puts @people.collect {|p| [ p.name, p.id ]}
  end

  def check_user_input
  	@message1 = params[:q]
  	puts @message1
  	puts "----------------------"
  	render 'user_input'
  end

  def create_db_hopital
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  	Hopital.create(name: "David", address: "Code Artist", district: "")
  end
end
