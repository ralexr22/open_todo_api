class Item < ActiveRecord::Base
  belongs_to :list
  has_many :items
end
