class AddApproveToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :approve_doctor, :boolean
  end
end
