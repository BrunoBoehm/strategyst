class ValueProposition < ActiveRecord::Base
  belongs_to :company
  has_many :personas
end
