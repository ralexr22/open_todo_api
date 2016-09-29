class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :description, :completed 
end
