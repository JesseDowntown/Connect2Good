class ChangeDescriptionTypeInNeed < ActiveRecord::Migration
 def change
    change_column :needs, :description, :text
  end

end
