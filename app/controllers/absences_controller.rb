class AbsencesController < ApplicationController
  def new
    @patient = Patient.find(params[:patient_id])
    @absence = @patient.absences.build
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @absence = @patient.absences.build(absence_params)

    if @absence.save
      redirect_to patient_path(@patient), notice: 'absemce-viste créé avec succès.'
    else
      render 'new'
    end
  end

  private

  def absence_params
    params.require(:abscence).permit(:date, :equipe, :motif, :etat)
  end

end
