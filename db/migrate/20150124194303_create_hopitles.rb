class CreateHopitles < ActiveRecord::Migration
  def change
    create_table :hopitles do |t|
      t.string :name
      t.string :address
      t.string :district

      t.timestamps
    end
  end
end
