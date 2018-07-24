class AddOrigineToTraceEntrant < ActiveRecord::Migration[5.2]
  def change
    add_column :trace_entrants, :origine, :string
  end
end
