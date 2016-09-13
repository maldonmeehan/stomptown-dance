class Figure < ActiveRecord::Base
  validates :title, :presence => true
end
