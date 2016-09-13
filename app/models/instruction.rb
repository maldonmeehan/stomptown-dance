class Instruction < ActiveRecord::Base
  belongs_to :figure

  validates :number, :presence => true
end
