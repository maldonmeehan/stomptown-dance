require 'rails_helper'

describe Instruction do
  it { should validate_presence_of :title }
  it { should belong_to :dance }
end
