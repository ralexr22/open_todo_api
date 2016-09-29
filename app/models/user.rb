class User < ActiveRecord::Base
  has_many :lists

  validates :username, :password, :pin, presence: true
end
