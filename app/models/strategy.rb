class Strategy < ActiveRecord::Base
  belongs_to :objective
  has_many :tactics
end
