class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :permissions 
end
