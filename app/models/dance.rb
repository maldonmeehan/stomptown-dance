class Dance < ActiveRecord::Base
  validates :name, :presence => true
end
