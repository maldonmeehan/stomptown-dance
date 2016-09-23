require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :video }
  it { should validate_presence_of :callers_notes }
  it { should validate_presence_of :number }
  it { should belong_to :section }
end
