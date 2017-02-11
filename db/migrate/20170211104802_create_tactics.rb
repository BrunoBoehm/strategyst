class CreateTactics < ActiveRecord::Migration
  def change
    create_table :tactics do |t|
      t.text :description
      t.string :medium
      t.integer :importance, default: 0
      t.string :frequency
      t.datetime :start
      t.datetime :end
      t.string :kpi
      t.integer :budget
      t.belongs_to :strategy
      t.belongs_to :poc

      t.timestamps null: false
    end
  end
end
