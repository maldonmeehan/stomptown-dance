class Instruction < ActiveRecord::Base
  belongs_to :dance

  validates :number, :presence => true
end
