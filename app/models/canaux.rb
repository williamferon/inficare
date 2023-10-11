class Canaux < ApplicationRecord
  has_many :sous_canaux, dependent: :destroy
end
