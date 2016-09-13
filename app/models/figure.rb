class Figure < ActiveRecord::Base
  belongs_to :dance

  validates :title, :presence => true
end
