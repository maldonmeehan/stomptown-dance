require 'rails_helper'

describe "the add a dance process" do
  it "adds a new dance" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit dances_path
    click_link 'New Dance'
    fill_in 'Name', :with => 'Dance One'
    click_on 'Create Dance'
    expect(page).to have_content 'Dance successfully added!'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit new_dance_path
    click_on 'Create Dance'
    expect(page).to have_content 'errors'
  end
end
