class ValueProposition < ActiveRecord::Base
  belongs_to :company
  has_many :personas

  validates :name, length: {maximum: 60}
end
