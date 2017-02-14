class Company < ActiveRecord::Base
	has_many :pocs, dependent: :destroy
	has_many :value_propositions, dependent: :destroy
	has_many :segments, dependent: :destroy

	validates_presence_of :name
	validates :name, length: {maximum: 60}
end
