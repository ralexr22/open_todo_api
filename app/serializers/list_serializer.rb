class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :user_id, :permissions 
end
