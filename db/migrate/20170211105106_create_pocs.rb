class CreatePocs < ActiveRecord::Migration
  def change
    create_table :pocs do |t|
      t.string :name
      t.string :title
      t.string :role
      t.string :img
      t.string :linkedin
      t.string :twitter
      t.string :telephone
      t.string :email
      t.belongs_to :company

      t.timestamps null: false
    end
  end
end
