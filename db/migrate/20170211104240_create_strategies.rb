class CreateStrategies < ActiveRecord::Migration
  def change
    create_table :strategies do |t|
      t.text :description
      t.text :ksf
      t.belongs_to :objective

      t.timestamps null: false
    end
  end
end
