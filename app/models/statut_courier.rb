class StatutCourier < ApplicationRecord
  include AASM



  extend Enumerize
  has_many :suivis
  has_many :entry_couriers, :through => :suivis, :source => :entry_courier

  enumerize  :statut, in: [:pas_traité, :traité, :livré]
=begin
  aasm.statut :statut

  aasm do
    state :pas_traité, :initial => true
    state :traité
    state :livré

    event :traite do
      transitions from: :pas_traité, to: :livré, guard: :traite_fait?
      transitions from: :pas_traité, to: :traité
    end
  end

  def traite_fait?
     true
  end
=end
end
