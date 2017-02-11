class Tactic < ActiveRecord::Base
  belongs_to :strategy
  belongs_to :poc
end
