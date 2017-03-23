class SegmentSerializer < ActiveModel::Serializer
  attributes :id, :description, :size, :growth
  has_many :personas
end
