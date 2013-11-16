class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name
      t.string :description
      t.string :unique_name

      t.timestamps
    end
  end
end
