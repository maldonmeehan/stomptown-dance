require 'rails_helper'

describe Figure do
  it { should validate_presence_of :title }
end
