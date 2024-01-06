class SoinsInfirmer < ApplicationRecord
  belongs_to :prise_en_charge
  serialize :soins, Array
  serialize :frequence, Array
  serialize :periode, Array
end
