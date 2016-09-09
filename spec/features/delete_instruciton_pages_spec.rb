require 'rails_helper'

describe "the delete instructions process" do
  it "edits a section" do
    dance = Dance.create(:name => 'Dance One')
    instruction = Instruction.create(:number => '1', :dance_id => dance.id)
    visit dance_path(dance)
    click_on "Delete Instructions"
    expect(page).to have_content 'Instructions successfully deleted!'
  end
end
