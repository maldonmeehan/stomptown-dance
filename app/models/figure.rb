class Figure < ActiveRecord::Base
  belongs_to :dance
  has_many :instructions, through: :moves
  has_many :moves

  validates :title, :presence => true
end
