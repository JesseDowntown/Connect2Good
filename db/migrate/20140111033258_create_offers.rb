class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :status
      t.references :donor, index: true
      t.references :organization, index: true

      t.timestamps
    end
  end
end
