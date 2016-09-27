class List < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :permissions, inclusion: { in: %w(private viewable open) }
end
