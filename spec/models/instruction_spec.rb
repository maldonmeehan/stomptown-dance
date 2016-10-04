require 'rails_helper'

describe Instruction do
  it { should validate_presence_of :number }
  it { should have_many :figures }
end
