class StrategySerializer < ActiveModel::Serializer
  attributes :id, :pitch, :description, :ksf
  belongs_to :objective
end
