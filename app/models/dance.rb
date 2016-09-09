class Dance < ActiveRecord::Base
  has_many :instructions

  validates :name, :presence => true
end
