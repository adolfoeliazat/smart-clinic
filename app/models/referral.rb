class Referral < ApplicationRecord
	belongs_to :patient
	belongs_to :user
	belongs_to :hospital
end
