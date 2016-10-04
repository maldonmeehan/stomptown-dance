require 'rails_helper'

describe Move do
  it { should belong_to :figure }
  it { should belong_to :instruction }
end
