class User < ActiveRecord::Base
  has_many :events, foreign_key: :admin_id
  has_many :participants
  has_many :events, through: :particpants
end
