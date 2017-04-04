class CreateHospitals < ActiveRecord::Migration[5.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text :address
      t.string :doctor
      t.text :department

      t.timestamps
    end
  end
end
