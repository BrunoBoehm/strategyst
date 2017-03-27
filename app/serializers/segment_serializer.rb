class SegmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :size, :growth
  has_many :personas
  has_many :objectives
end
