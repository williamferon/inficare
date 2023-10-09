class PatientsController < ApplicationController
  #@patient = Patient.find(params[:id])


  def index

    @patients = Patient.all

      if params[:query].present?
        query = "%#{params[:query]}%"
        sql_subquery = "nom LIKE :query OR prenom LIKE :query OR niss LIKE :query"
        @patients = @patients.where(sql_subquery, query: query)
      end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new # Needed to instantiate the form_with
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to @patient, notice: 'patient créé avec succes.'
    else
      render :new
    end
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
