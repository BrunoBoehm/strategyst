class PersonaSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :role, :jobs, :pains, :gains, :touch_points, :quotes, :age, :income, :education, :location, :story
  belongs_to :segment
end
