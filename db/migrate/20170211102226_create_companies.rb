class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :pitch
      t.text :context
      t.text :goal
      t.text :mission
      t.text :vision
      t.text :values
      t.string :logo
      t.string :website
      t.string :address

      t.timestamps null: false
    end
  end
end
