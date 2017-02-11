class Persona < ActiveRecord::Base
  belongs_to :value_proposition
  belongs_to :segment
  has_many :clients

  enum age: [:from_12_to_17, :from_18_to_24, :from_25_to_34, :from_35_to_44, :from_45_to_54, :from_55_to_64, :above_65]
  enum income: [:less_than_20k, :from_20k_to_35k, :from_35k_to_50k, :from_50k_to_75k, :from_75k_to_100k, :from_100k_to_150k, :above_150k]
  enum education: [:less_than_highschool, :high_school_degree, :college_without_degree, :associate_degree, :bachelor_degree, :graduate_degree] 
end
