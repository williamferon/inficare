class PriseEnCharge < ApplicationRecord
  belongs_to :patient
  serialize :soins_infi
end
