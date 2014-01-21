class AddStatusToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :status, :boolean, default: true
  end
end
