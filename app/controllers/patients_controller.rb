class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @restaurant = Patient.new # Needed to instantiate the form_with
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.save
    # No need for app/views/restaurants/create.html.erb
    #redirect_to restaurant_path(@restaurant)
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
  end

  private

  def patient_params
    params.require(:patient).permit(:nom, :prenom, :telephone, :rue, :numero, :ville, :niss)
  end

end
