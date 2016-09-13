class Dance < ActiveRecord::Base
  has_many :instructions
  has_many :figures

  validates :name, :presence => true
end
