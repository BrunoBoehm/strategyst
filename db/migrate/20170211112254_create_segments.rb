class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.string :name
      t.text :description
      t.integer :size, default: 0
      t.integer :growth, default: 0
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
