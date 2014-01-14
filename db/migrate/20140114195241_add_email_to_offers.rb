class AddEmailToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :email, :string
  end
end
