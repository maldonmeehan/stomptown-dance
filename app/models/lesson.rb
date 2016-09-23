class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, :presence => true
  validates :content, :presence => true
  validates :video, :presence => true
  validates :callers_notes, :presence => true
  validates :number, :presence => true
end
