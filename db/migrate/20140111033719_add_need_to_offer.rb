class AddNeedToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :need_id, :integer
  end
end
