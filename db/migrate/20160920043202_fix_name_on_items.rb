class FixNameOnItems < ActiveRecord::Migration
  def change
    rename_column :items, :name, :description
  end
end
