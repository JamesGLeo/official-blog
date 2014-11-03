class User < ActiveRecord::Base
  include BCrypt
  has_many :pages

  validates :username, uniqueness: true

  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end