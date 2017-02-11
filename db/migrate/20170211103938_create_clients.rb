class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.text :story
      t.string :location
      t.text :ksf
      t.belongs_to :persona

      t.timestamps null: false
    end
  end
end
