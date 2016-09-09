require 'rails_helper'

describe "the edit instructions process" do
  it "edits instructions" do
    dance = Dance.create(:name => 'Dance One')
    instruction = Instruction.create(:number => '1', :dance_id => dance.id)
    visit dance_path(dance)
    click_on 'Edit Instructions'
    fill_in 'Number', :with => '2'
    click_on 'Update Instruction'
    expect(page).to have_content 'Instruction successfully eddited!'
  end

  it "gives error when no name is entered" do
    dance = Dance.create(:name => 'Dance One')
    instruction = Instruction.create(:number => '1', :dance_id => dance.id)
    visit dance_path(dance)
    click_on 'Edit Instructions'
    fill_in 'Number', :with => ''
    click_on 'Update Instruction'
    expect(page).to have_content 'errors'
  end
end
