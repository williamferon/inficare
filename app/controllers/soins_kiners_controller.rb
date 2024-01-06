class SoinsKinersController < ApplicationController
  before_action :set_patient
  before_action :set_prise_en_charge

    def index
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_kiners = @prise_en_charge.soins_kiners
    end

    def create
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_kiner = @prise_en_charge.soins_kiners.build(soins_kiner_params)

      if @soins_kiner.save
        redirect_to patient_path(@patient.id), notice: 'Soins kiner créé avec succès.'
      else
        render 'new'
      end
    end

    def show
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_kiner = @prise_en_charge.soins_kiners.find(params[:id])
    end

    def new
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_kiner = @prise_en_charge.soins_kiners.build
    end

    def edit
    @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
    @soins_kiner = @prise_en_charge.soins_kiners.find(params[:id])
    end

    def update
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_kiner = @prise_en_charge.soins_kiners.find(params[:id])

      if @soins_kiner.update(soins_kiner_params)
        redirect_to prise_en_charge_soins_kiner_path(@prise_en_charge, @soins_kiner), notice: 'Sous-canal mis à jour avec succès.'
      else
        render 'edit'
      end
    end

    def destroy
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
      @soins_kiner = @prise_en_charge.soins_kiners.find(params[:id])
      @soins_kiner.destroy
      redirect_to prise_en_charge_soins_kiners_path(@prise_en_charge), notice: 'Sous-canal supprimé avec succès.'
    end

    private
    def set_patient
      @patient = Patient.find(params[:patient_id])

    end

    def soins_kiner_params
      params.require(:soins_kiner).permit(:prise_en_charge_id, :autre, frequence: [], periode: [], soins: [])
    end

    def set_prise_en_charge
      @prise_en_charge = PriseEnCharge.find(params[:prise_en_charge_id])
    end

end
