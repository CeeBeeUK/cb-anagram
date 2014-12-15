class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
      t.string :wrd_array

      t.timestamps
    end
  end
end
