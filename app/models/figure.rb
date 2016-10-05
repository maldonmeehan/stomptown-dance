class Figure < ActiveRecord::Base
  belongs_to :dance
  has_many :instructions

  validates :title, :presence => true
end
