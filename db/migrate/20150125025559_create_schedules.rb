class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name_patient
      t.string :phone_patient
      t.string :email_patient
      t.string :department_patient
      t.integer :age_patient
      t.string :address_patient
      t.string :hopital_patient
      t.DateTime :time_patient
      t.text :description_patient

      t.timestamps
    end
  end
end
