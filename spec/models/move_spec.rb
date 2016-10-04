require 'rails_helper'

describe Move do
  it { should belong_to :figure }
  it { should belone_to :answer }
end
