class CreateValuePropositions < ActiveRecord::Migration
  def change
    create_table :value_propositions do |t|
      t.text :product_service
      t.integer :price
      t.text :promotion
      t.text :place
      t.text :gain_creator
      t.text :pain_reliever
      t.text :differentiation
      t.belongs_to :company

      t.timestamps null: false
    end
  end
end
