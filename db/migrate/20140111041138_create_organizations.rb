class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :owner, index: true
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
