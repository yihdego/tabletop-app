class User < ActiveRecord::Base
  has_many :admined_events, foreign_key: :admin_id, class_name: :Event
  has_many :participates
  has_many :events, through: :participates

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.login(email, input)
    @user = User.find_by_email(email)
      if @user && @user.password == input
        @user
      else
        nil
      end
  end
end
