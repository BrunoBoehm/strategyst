class CreateTactics < ActiveRecord::Migration
  def change
    create_table :tactics do |t|
      t.string :pitch
      t.text :description
      t.string :medium
      t.integer :importance, default: 0
      t.string :frequency
      t.datetime :start
      t.datetime :end
      t.string :kpi
      t.integer :budget
      t.belongs_to :strategy, index: true, foreign_key: true
      t.belongs_to :poc, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
