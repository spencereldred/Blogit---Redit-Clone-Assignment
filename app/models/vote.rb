class Vote < ActiveRecord::Base
  attr_accessible :vote, :votable_id, :votable_type, :user_id

  belongs_to :user
  belongs_to :votable, polymorphic: true

  validates :vote, presence: true
  validates :votable, presence: true
  validates :user, presence: true
end
