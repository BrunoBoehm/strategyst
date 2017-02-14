class Objective < ActiveRecord::Base
  belongs_to :segment
  has_many :strategies, dependent: :destroy

  validates :title, length: {maximum: 60}
end
