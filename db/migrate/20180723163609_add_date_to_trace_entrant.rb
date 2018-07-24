class AddDateToTraceEntrant < ActiveRecord::Migration[5.2]
  def change
    add_column :trace_entrants, :date, :datetime
  end
end
