class Suivi < ApplicationRecord
  belongs_to :statut_courier
  belongs_to :entry_courier
end
