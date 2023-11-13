# app/controllers/prise_en_charges_controller.rb
class PriseEnChargesController < ApplicationController
  # your code here
  def index
    @patient = Patient.find(params[:patient_id])
    @prise_en_charges = @patient.prise_en_charges.all
  end
  def show
    @patient = Patient.find(params[:patient_id])
    @prise_en_charge = @patient.prise_en_charges.find(params[:id])

  end

  def new
    @patient = Patient.new
    @prise_en_charge = PriseEnCharge.new
  end

  def create
      @patient = Patient.find(params[:prise_en_charge][:patient_id]) if params[:prise_en_charge][:patient_id].present?
      @patient ||= Patient.new(patient_params)
      @prise_en_charge = @patient.prise_en_charges.build

      puts "Patient ID: #{params[:prise_en_charge][:patient_id]}"

      if @patient.save
        redirect_to [@patient, @prise_en_charge], notice: 'Prise en charge was successfully created.'
      else
        render :new
      end
  end

  private

  def patient_params
    params.require(:prise_en_charge).permit(:patient_id, :nom, :prenom, :telephone, :rue, :numero, :ville, :niss) # Add other patient attributes here
  end
  def prise_en_charge_params
    params.require(:prise_en_charge).permit(:patient_id)
  end

end
