class Tactic < ActiveRecord::Base
  belongs_to :strategy
  belongs_to :poc

  enum importance: [:low, :neutral, :medium, :high, :critical]
end
