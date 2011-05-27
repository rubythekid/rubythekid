class User < ActiveRecord::Base
  has_many :article
  validates :username, :presence=>true,:uniqueness => true
  validates :password, :presence=>true
  acts_as_authentic
end
