class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.text :specific
      t.text :measurable
      t.text :achievable
      t.text :realistic
      t.datetime :timed
      t.belongs_to :segment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
