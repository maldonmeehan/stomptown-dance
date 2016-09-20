require 'rails_helper'

describe "the edit a dance process" do
  it "edits a dance" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    dance = Dance.create(:name => 'Dance One')
    visit dance_path(dance)
    click_on 'Edit Dance'
    fill_in 'Name', :with => 'Dance Two'
    click_on 'Update Dance'
    expect(page).to have_content 'Dance successfully eddited!'
  end

  it "gives error when no name is entered" do
    dance = Dance.create(:name => 'Dance One')
    visit dance_path(dance)
    click_on 'Edit Dance'
    fill_in 'Name', :with => ''
    click_on 'Update Dance'
    expect(page).to have_content 'errors'
  end
end
