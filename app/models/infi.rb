class Infi < ApplicationRecord
  def nom_with_prefix
    "Prefix #{self.nom}"
  end

end
