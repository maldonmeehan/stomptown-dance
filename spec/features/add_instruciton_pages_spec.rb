require 'rails_helper'

describe "the add instructions process" do
  it "adds new instructions" do
    visit dances_path
    click_link "New Dance"
    fill_in "Name", :with => "Dance One"
    click_on "Create Dance"
    click_on "Dance One"
    click_on "Add Instructions"
    fill_in "Number", :with => "1"
    click_on "Create Instruction"
    expect(page).to have_content 'Instructions successfully added!'
  end

  it "gives error when no number is entered" do
    visit dances_path
    click_link "New Dance"
    fill_in "Name", :with => "Dance One"
    click_on "Create Dance"
    click_on "Dance One"
    click_on "Add Instructions"
    fill_in "Number", :with => ""
    click_on "Create Instruction"
    expect(page).to have_content 'errors'
  end
end
