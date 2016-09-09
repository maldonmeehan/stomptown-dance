require 'rails_helper'

describe "the add a section process" do
  it "adds a new section" do
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
    visit courses_path
    click_link "New Course"
    fill_in "Name", :with => "Course One"
    click_on "Create Course"
    click_on "Course One"
    click_on "Add a Section"
    click_on "Create Section"
    expect(page).to have_content 'errors'
  end
end
