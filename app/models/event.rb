class Event < ActiveRecord::Base
  belongs_to :admin, class_name: :User
  has_many :event_tags
  has_many :tags, through: :event_tags
  has_many :participates
  has_many :users, through: :participates
end
