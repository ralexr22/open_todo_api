class User < ActiveRecord::Base
  has_many :lists

  validates :username, :password, presence: true
end
