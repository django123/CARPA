class AddCommentToStatutCourier < ActiveRecord::Migration[5.2]
  def change
    add_column :statut_couriers, :comment, :text
  end
end
