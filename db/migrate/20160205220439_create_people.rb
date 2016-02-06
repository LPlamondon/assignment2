class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.decimal :weight
      t.decimal :height
      t.integer :red
      t.integer :green
      t.integer :blue
      t.string :country
      t.string :gender
      t.integer :age
      t.string :language

      t.timestamps null: false
    end
  end
end
