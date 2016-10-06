require 'rails_helper'

describe "the add instructions process" do
  it "adds new instructions", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    figure = FactoryGirl.create(:figure)
    visit dances_path
    click_on 'Connemara Set Dance'
    click_on 'Edit'
    click_on "Add Instructions"
    fill_in "Number", :with => "1"
    fill_in "Move", :with => "Tops"
    fill_in "Call", :with => "House"
    fill_in "Instruction", :with => "Crossed hands dance anti-clockwise around the set."
    fill_in "Bars", :with => 8
    click_on "Create Instruction"
    expect(page).to have_content 'Instructions successfully added!'
  end

  it "gives error when no number is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    figure = FactoryGirl.create(:figure)
    visit dances_path
    click_on 'Connemara Set Dance'
    click_on 'Edit'    
    click_on "Add Instructions"
    fill_in "Number", :with => ""
    fill_in "Move", :with => "Tops"
    fill_in "Call", :with => "House"
    fill_in "Bars", :with => 8
    click_on "Create Instruction"
    expect(page).to have_content 'errors'
  end

end
