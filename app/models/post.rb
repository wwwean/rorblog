class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author
  validates :title, :presence => true
  validates :body, :presence => true, :length => { :minimum => 10 }
  has_many :comments
end
