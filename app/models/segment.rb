class Segment < ActiveRecord::Base
  belongs_to :company
  has_many :objectives
  has_many :personas
end
