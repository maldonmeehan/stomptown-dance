require 'rails_helper'

describe Dance do
  it { should validate_presence_of :name }
end
