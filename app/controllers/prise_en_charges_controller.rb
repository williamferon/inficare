# app/controllers/prise_en_charges_controller.rb
class PriseEnChargesController < ApplicationController

before_action :set_patient

    def index
      @patient = Patient.find(params[:patient_id])
      @prise_en_charges = @patient.prise_en_charges
    end



    def create
      @patient = Patient.find(params[:patient_id])
      @prise_en_charge = @patient.prise_en_charges.build(prise_en_charge_params)

      if @prise_en_charge.save
        redirect_to patients_path, notice: 'Sous-canal créé avec succès.'
      else
        render 'new'
      end
    end

    def new
      @patient = Patient.find(params[:patient_id])
      @prise_en_charge = @patient.prise_en_charges.build
    end


    def edit
      @patient = Patient.find(params[:patient_id])
      @prise_en_charge = @patient.prise_en_charges.find_by(id: params[:id])

      unless @prise_en_charge
        flash[:alert] = 'Prise En Charge not found.'
        redirect_to patient_path(@patient)
      end
    end


    def update
      @patient = Patient.find(params[:patient_id])
      @prise_en_charge = @patient.prise_en_charges.find(params[:id])

      if @prise_en_charge.update(prise_en_charge_params)
        redirect_to patient_prise_en_charge_path(@patient, @prise_en_charge), notice: 'Sous-canal mis à jour avec succès.'
      else
        render 'edit'
      end
    end

    # def destroy
    #   @prise_en_charge = PriseEnCharge.find(params[:id])
    #   @prise_en_charge.destroy
    #   redirect_to patient_path, notice: 'Sous-canal supprimé avec succès.'
    # end

    def show
      @patient = Patient.find(params[:patient_id])
      @prise_en_charge = @patient.prise_en_charges.find(params[:id])
    end

    def destroy
      @patient = patient.find(params[:patient_id])
      @prise_en_charge = @patient.prise_en_charges.find(params[:id])
      @prise_en_charge.destroy
      redirect_to patient_prise_en_charges_path(@patient), notice: 'Sous-canal supprimé avec succès.'


    end

    private

    def prise_en_charge_params
      params.require(:prise_en_charge).permit(:patient_id,
        :traite_par,:info_patient,:dispatching_inficare,:dispatching_kinecare,:demande, :soins_kiner,:date_appel,:date_debut,:moment,
        :channel_id, :subchannel_id, :coordinateur,:email,:commentaire, :matin_start_time, :matin_end_time,:midi_start_time,:midi_end_time,:apres_midi_start_time,:apres_midi_end_time,
        :soir_start_time,:soir_end_time, statut_demande: [], service: [], soins_infirmer: [])
    end

    def set_patient
      @patient = Patient.find(params[:patient_id])
    end

end
