class User < ActiveRecord::Base
  has_many :admined_events, foreign_key: :admin_id, class_name: :Event
  has_many :participants
  has_many :events, through: :particpants
end
