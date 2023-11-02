# app/controllers/prise_en_charges_controller.rb
class PriseEnChargesController < ApplicationController
  # your code here

  def new
    @patient = Patient.new
    @prise_en_charge = PriseEnCharge.new
  end

  def create
    @patient = Patient.find(params[:patient_id]) if params[:patient_id].present?
    @patient ||= Patient.new(patient_params)
    @prise_en_charge = @patient.prise_en_charges.build

    if @patient.save
      redirect_to [@patient, @prise_en_charge], notice: 'Prise en charge was successfully created.'
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:nom, :prenom, :telephone, :rue, :numero, :ville, :niss) # Add other patient attributes here
  end
end
