require 'rails_helper'

describe Instruction do
  it { should validate_presence_of :number }
  it { should belong_to :dance }
end
