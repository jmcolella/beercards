class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :deck, foreign_key:true, index: true
      t.references :user, foreign_key:true, index:true
      t.timestamps(null:false)
    end
  end
end
