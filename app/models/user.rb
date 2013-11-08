class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid

  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :votes, dependent: :destroy

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

end
