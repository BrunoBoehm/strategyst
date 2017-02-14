class AddNameToValuePropositions < ActiveRecord::Migration
  def change
    add_column :value_propositions, :name, :string
  end
end
