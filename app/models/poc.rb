class Poc < ActiveRecord::Base
  belongs_to :company
  has_many :tactics
end
