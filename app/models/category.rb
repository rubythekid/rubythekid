class Category < ActiveRecord::Base
  belongs_to :section
  has_many :article
  validates :name, :presence=>true,:length => {:maximum => 20},:uniqueness => true
  validates :section_id, :presence=>true,:uniqueness => true
end
