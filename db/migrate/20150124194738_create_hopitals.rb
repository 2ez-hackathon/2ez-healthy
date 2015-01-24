class CreateHopitals < ActiveRecord::Migration
  def change
    create_table :hopitals do |t|
      t.string :name
      t.string :address
      t.string :district

      t.timestamps
    end
  end
end
