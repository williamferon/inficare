class SoinsInfirmersController < ApplicationController
  before_action :set_patient
  before_action :set_prise_en_charge

    def index
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_infirmers = @prise_en_charge.soins_infirmers
    end

    def create
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_infirmer = @prise_en_charge.soins_infirmers.build(soins_infirmer_params)

      if @soins_infirmer.save
        redirect_to patient_path(@patient.id), notice: 'Soins infirmier créé avec succès.'
      else
        render 'new'
      end
    end

    def show
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_infirmer = @prise_en_charge.soins_infirmers.find(params[:id])
    end

    def new
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_infirmer = @prise_en_charge.soins_infirmers.build
    end

    def edit
    @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
    @soins_infirmer = @prise_en_charge.soins_infirmers.find(params[:id])
    end

    def update
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_infirmer = @prise_en_charge.soins_infirmers.find(params[:id])

      if @soins_infirmer.update(soins_infirmer_params)
        redirect_to prise_en_charge_soins_infirmer_path(@prise_en_charge, @soins_infirmer), notice: 'Sous-canal mis à jour avec succès.'
      else
        render 'edit'
      end
    end

    def destroy
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_infirmer = @prise_en_charge.soins_infirmers.find(params[:id])
      @soins_infirmer.destroy
      redirect_to prise_en_charge_soins_infirmers_path(@prise_en_charge), notice: 'Sous-canal supprimé avec succès.'
    end

    private
    def set_patient
      @patient = Patient.find(params[:patient_id])

    end

    def soins_infirmer_params
      params.require(:soins_infirmer).permit(:prise_en_charge_id, :autre, frequence: [], periode: [], soins: [])
    end

    def set_prise_en_charge
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
    end

end
