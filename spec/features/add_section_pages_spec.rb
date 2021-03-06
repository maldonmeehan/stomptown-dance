require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit courses_path
    click_link "New Course"
    fill_in "Name", :with => "Course One"
    click_on "Create Course"
    click_on "Course One"
    click_on "Add a Section"
    fill_in "Name", :with => "Section One"
    click_on "Create Section"
    expect(page).to have_content 'Section One'
  end

  it "gives error when no name is entered" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit courses_path
    click_link "New Course"
    fill_in "Name", :with => "Course One"
    click_on "Create Course"
    click_on "Course One"
    click_on "Add a Section"
    fill_in "Name", :with => ""
    click_on "Create Section"
    expect(page).to have_content 'errors'
  end
end
