class ReferralsController < ApplicationController
	before_action :find_patient
	before_action :find_referral, only: [:destroy]

  def new
    @referral = current_user.referrals.build
    @hospitals = Hospital.all.map{ |h| [h.name, h.id]}
  end

  def create
    @referral = current_user.referrals.build(referral_params)
    @referral.patient_id = @patient.id
    @referral.user_id = current_user.id
    @referral.hospital_id = params[:hospital_id]

    if @referral.save
      redirect_to patient_path(@patient)

    else
      render 'new'
    end
  end

  def destroy
     	@referral.destroy
     	redirect_to patient_path(@patient)
  end

  private
  def referral_params
    params.required(:referral).permit(:name, :address, :dob, :phone, :consultation, :hospital_id)
  end

  def find_patient
    @patient = Patient.find(params[:patient_id])
  end

  def find_referral
      @referral = Referral.find(params[:id])
  end

end
