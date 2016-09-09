class Instruction < ActiveRecord::Base
  belongs_to :dance

  validates :title, :presence => true
end
