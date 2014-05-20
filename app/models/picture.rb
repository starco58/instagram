class Picture < ActiveRecord::Base
  validates :source, :presence => true

  has_many :comments, :dependent => :destroy
end
