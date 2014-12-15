class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
      t.string :array

      t.timestamps
    end
  end
end
