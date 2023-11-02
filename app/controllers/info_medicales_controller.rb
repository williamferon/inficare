class InfoMedicalesController < ApplicationController
  before_action :set_patient
  before_action :set_info_medicale, only: [:show, :edit, :update, :destroy]

  def index
    @info_medicales = @patient.info_medicales.all
  end

  def show
  end

  def new
    @info_medicale = @patient.info_medicales.new
  end

  def create
    @info_medicale = @patient.info_medicales.new(info_medicale_params)
    if @info_medicale.save
      redirect_to patient_info_medicales_path(@patient), notice: 'Info médicale créée avec succès.'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @info_medicale.update(info_medicale_params)
      redirect_to patient_info_medicale_path(@patient, @info_medicale)
    else
      render 'edit'
    end
  end

  def destroy
    @info_medicale.destroy
    redirect_to patient_info_medicales_path(@patient), notice: 'Info médicale supprimée avec succès.'
  end

  private

  def set_patient
    @patient = Patient.find(params[:patient_id])
  end

  def set_info_medicale
    @info_medicale = @patient.info_medicales.find(params[:id])
  end

  def info_medicale_params
    params.require(:info_medicale).permit(:date, :info, :note)
  end
end
