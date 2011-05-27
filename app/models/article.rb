class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  validates :title, :presence=>true,:length => {:maximum => 50},:uniqueness => true
  validates :content, :presence=>true
  validates :category_id, :presence=>true
end
