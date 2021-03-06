class Segment < ActiveRecord::Base
  belongs_to :company
  has_many :objectives
  has_many :personas

  validates :name, length: {maximum: 60}

  enum growth: [ :na, :neutral, :slow, :high, :booming ]
end
