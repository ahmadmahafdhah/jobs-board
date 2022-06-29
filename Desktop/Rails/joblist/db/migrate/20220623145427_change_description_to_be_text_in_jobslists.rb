class ChangeDescriptionToBeTextInJobslists < ActiveRecord::Migration[7.0]
  def change
    change_column :jobslists, :description, :text
  end
end
