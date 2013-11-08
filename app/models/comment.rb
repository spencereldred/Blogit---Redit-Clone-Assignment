class Comment < ActiveRecord::Base
  attr_accessible :commentable_id, :commentable_type, :text, :user_id

  has_many :votes, as: :votable, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :text, presence: true
  validates :user, presence: true
  validates :commentable, presence: true

end
