class Channel < ApplicationRecord
  has_many :sub_channels, dependent: :destroy
end
