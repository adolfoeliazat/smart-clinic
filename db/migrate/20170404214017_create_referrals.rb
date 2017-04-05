class CreateReferrals < ActiveRecord::Migration[5.0]
  def change
    create_table :referrals do |t|
      t.string :name
      t.text :address
      t.date :dob
      t.string :phone
      t.text :consultation

      t.timestamps
    end
  end
end
