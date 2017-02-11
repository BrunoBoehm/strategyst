class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.text :specific
      t.text :measurable
      t.text :achievable
      t.text :realistic
      t.text :timed
      t.belongs_to :segment

      t.timestamps null: false
    end
  end
end
