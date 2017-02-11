class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.string :pitch
      t.text :description
      t.text :ksf
      t.belongs_to :objective, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
