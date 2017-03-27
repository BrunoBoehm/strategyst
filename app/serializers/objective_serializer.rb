class ObjectiveSerializer < ActiveModel::Serializer
  attributes :id, :title, :specific, :measurable, :achievable, :realistic, :timed
  belongs_to :segment
end