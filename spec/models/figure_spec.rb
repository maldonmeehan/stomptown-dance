require 'rails_helper'

describe Figure do
  it { should belong_to :dance }
  it { should validate_presence_of :title }
end
