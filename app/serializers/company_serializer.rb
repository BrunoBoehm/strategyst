class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :pitch, :context, :goal, :mission, :vision, :values, :logo, :website, :address
  has_many :segments
end
