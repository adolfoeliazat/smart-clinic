class AddPatientIdToReferrals < ActiveRecord::Migration[5.0]
  def change
    add_column :referrals, :patient_id, :integer
  end
end
