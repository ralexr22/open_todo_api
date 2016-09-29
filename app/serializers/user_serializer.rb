class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :pin 
end
