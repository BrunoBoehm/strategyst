class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.string :img
      t.string :role
      t.text :jobs
      t.text :pains
      t.text :gains
      t.text :touch_points
      t.text :quotes
      t.text :story      
      t.integer :age, default: 0
      t.integer :income, default: 0
      t.integer :education, default: 0
      t.string :location
      t.belongs_to :value_proposition
      t.belongs_to :segment

      t.timestamps null: false
    end
  end
end
