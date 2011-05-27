class Section < ActiveRecord::Base
  has_many :category
  validates :name, :presence=>true,:length => {:maximum => 20},:uniqueness => true
end
