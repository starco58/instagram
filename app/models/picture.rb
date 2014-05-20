class Picture < ActiveRecord::Base
  validates :source, :presence => true
end
