class Like < ApplicationRecord
  belongs_to :deal
  belongs_to :user

  validates :deal, presence: true, :uniqueness => {:scope => :user}
  validates :user, presence: true, :uniqueness => {:scope => :deal}

  include StreamRails::Activity
  as_activity

  def activity_object
    self.deal
  end
end
