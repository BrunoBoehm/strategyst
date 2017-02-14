class Tactic < ActiveRecord::Base
  belongs_to :strategy
  belongs_to :poc

  validates :pitch, length: {maximum: 60}

  enum importance: [:low, :neutral, :medium, :high, :critical]
end
