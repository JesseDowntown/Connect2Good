class AddColumnStatusToNeed < ActiveRecord::Migration
  def change
    add_column :needs, :status, :boolean, default: true
  end
end
