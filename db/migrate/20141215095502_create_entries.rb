class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
      t.string :array, array: true, default: []

      t.timestamps
    end
  end
end
