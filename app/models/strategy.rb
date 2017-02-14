class Strategy < ActiveRecord::Base
  belongs_to :objective
  has_many :tactics

  validates :pitch, length: {maximum: 60}
end
