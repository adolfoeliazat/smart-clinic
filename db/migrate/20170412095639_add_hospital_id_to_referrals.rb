class AddHospitalIdToReferrals < ActiveRecord::Migration[5.0]
  def change
    add_column :referrals, :hospital_id, :integer
  end
end
