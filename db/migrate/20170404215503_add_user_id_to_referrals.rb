class AddUserIdToReferrals < ActiveRecord::Migration[5.0]
  def change
    add_column :referrals, :user_id, :integer
  end
end
