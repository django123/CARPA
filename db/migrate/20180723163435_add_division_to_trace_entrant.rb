class AddDivisionToTraceEntrant < ActiveRecord::Migration[5.2]
  def change
    add_column :trace_entrants, :division, :string
  end
end
