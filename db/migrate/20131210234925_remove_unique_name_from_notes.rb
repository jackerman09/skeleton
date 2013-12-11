class RemoveUniqueNameFromNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :unique_name, :string
  end
end
