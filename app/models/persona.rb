class Persona < ActiveRecord::Base
  belongs_to :value_proposition
  belongs_to :segment
  has_many :clients
end
