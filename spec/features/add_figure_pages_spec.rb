require 'rails_helper'

describe "the add a figure process" do
  it "adds a figure dance", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    dance = FactoryGirl.create(:dance)
    visit dances_path
    click_on 'Connemara Set Dance'
    click_on 'Add Figures'
    fill_in 'Number', :with => '1'
    fill_in 'Tune', :with => 'Reels'
    fill_in 'Title', :with => 'ladies chain'
    fill_in 'Bar total', :with => '200'
    click_on 'Create Figure'
    expect(page).to have_content 'Figure has be successfully added!'
  end

  it "no name is entered for figure", js: true do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    dance = FactoryGirl.create(:dance)
    visit dances_path
    click_on 'Connemara Set Dance'
    click_on 'Add Figures'
    fill_in 'Number', :with => ''
    fill_in 'Tune', :with => ''
    fill_in 'Title', :with => ''
    fill_in 'Bar total', :with => ''
    click_on 'Create Figure'
    expect(page).to have_content 'errors'
  end
end
