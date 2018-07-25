class TraceSortante < ApplicationRecord
  belongs_to :release_courier

  rails_admin do
    label "Suivi courrier sortant "

    edit do
      field :release_courier do
        label "Courrier sortant"
      end

      field :division do
        label "Division"
      end

      field :date do
        label "Date"
      end
    end

    show do
      field :release_courier do
        label "Courrier sortant"
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
