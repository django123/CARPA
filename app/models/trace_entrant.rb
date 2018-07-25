class TraceEntrant < ApplicationRecord
  extend Enumerize
  enumerize  :division, in:[:Sécrétariat_CST, :Sécrétariat_Président, :RAF, :AC, :CM]
  belongs_to :entry_courier
  validates_presence_of  :division, :origine

  rails_admin do
    label "Suivi courrier entrant "
    edit do
      field :entry_courier do
        label "Courrier entrant"
      end
      field :entry_courier do
        label "Courrier entrant"
      end

      field :division do
        label "Division"
      end

      field :date do
        label "Date"
      end
    end

    show do
      field :entry_courier do
        label "Courrier entrant"
      end
      field :entry_courier do
        label "Courrier entrant"
      end

      field :division do
        label "Division"
      end

      field :date do
        label "Date"
      end
    end
  end
end
