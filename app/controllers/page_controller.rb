class PageController < ApplicationController
  def home
    @prise_en_charges = PriseEnCharge.all.select do |pec|
      pec.statut_demande.nil? || pec.statut_demande.length < 3
    end

    @prise_en_charges_count = @prise_en_charges.count
    @patients = Patient.all

    @total_count = 0

    @patients = Patient.all
    @patients.each do |patient|
      patient.incidents.each do |incident|
        if incident.date == Date.today && incident.etat != "Cloturé"
          @total_count += 1
        end
      end
      patient.absences.each do |absence|
        if absence.date == Date.today && absence.etat != "Cloturé"
          @total_count += 1
        end
      end
    end
  end
end
