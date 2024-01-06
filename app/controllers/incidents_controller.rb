
class IncidentsController < ApplicationController
  def new
    @patient = Patient.find(params[:patient_id])
    @incident = @patient.incidents.build
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @incident = @patient.incidents.build(incident_params)

    if @incident.save
      redirect_to patient_path(@patient), notice: 'Incident créé avec succès.'
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find(params[:patient_id])
    @incident = @patient.incidents.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:patient_id])
    @incident = @patient.incidents.find(params[:id])
      if @incident.update(incident_params)
        redirect_to root_path, notice: 'Incident was successfully updated.'
      else
        render :edit
      end
  end


  private

  def incident_params
    params.require(:incident).permit(:date, :equipe, :motif, :etat)
  end
end
