require 'rails_helper'

describe Dance do
  it { should validate_presence_of :name }
  it { should have_many :instructions }
  it { should have_many :figures }
end
