class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :follows, foreign_key: :target_id
  has_many :deals

  def followed(user = nil)
    self.follows.where(user: user).first
  end
end
