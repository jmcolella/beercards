class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :name, null:false
      t.integer :num_of_cards, null:false
      t.timestamps(null:false)
    end
  end
end
