class Deal < ApplicationRecord
  belongs_to :user
  has_many :likes

  def user_like(user = nil)
    self.likes.where(user: user).first
  end
end
