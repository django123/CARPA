class AddDateToTraceSortante < ActiveRecord::Migration[5.2]
  def change
    add_column :trace_sortantes, :date, :datetime
  end
end
