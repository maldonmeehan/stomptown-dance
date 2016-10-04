class Instruction < ActiveRecord::Base
  has_many :figures, through: :moves

  validates :number, :presence => true
end
