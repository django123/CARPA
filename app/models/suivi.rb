class Suivi < ApplicationRecord
  belongs_to :statut_courier
  belongs_to :entry_courier

  rails_admin do
    label " Suivi"

    edit do
      field :statut_courier do
        label " Statut courrier"
      end

      field :entry_courier do
        label "Courrier entrant"
      end
    end

    show do
      field :statut_courier do
        label " Statut courrier"
      end

      field :entry_courier do
        label "Courrier entrant"
      end
    end
  end
end
