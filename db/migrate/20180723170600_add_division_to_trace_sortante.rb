class AddDivisionToTraceSortante < ActiveRecord::Migration[5.2]
  def change
    add_column :trace_sortantes, :division, :string
  end
end
