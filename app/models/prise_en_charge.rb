class PriseEnCharge < ApplicationRecord
  belongs_to :patient
  belongs_to :channel, class_name: 'Channel', optional: true
  belongs_to :subchannel, class_name: 'SubChannel', optional: true
  has_many :soins_kiners, class_name: 'SoinsKiner', dependent: :destroy
  has_many :soins_infirmers, class_name: 'SoinsInfirmer', dependent: :destroy

  serialize :statut_demande, Array
  serialize :service, Array

  serialize :soins, Array
  serialize :frequence, Array
  serialize :periode, Array

  def completed?
    # Check if all four statuses are present in the array
    ['CALL PATIENT', 'SMS PATIENT Envoyé', 'ATTRIBUTION EQUIPE', 'Confirmation Cannaux'].all? do |status|
      statut_demande.include?(status)
    end
  end
end
