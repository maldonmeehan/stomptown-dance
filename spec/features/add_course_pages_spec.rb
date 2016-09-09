require 'rails_helper'

describe "the add a course process" do
  it "adds a new course" do
    visit courses_path
    click_link 'New Course'
    fill_in 'Name', :with => 'Course One'
    click_on 'Create Course'
    expect(page).to have_content 'Course successfully added!'
  end

  it "gives error when no name is entered" do
    visit new_course_path
    click_on 'Create Course'
    expect(page).to have_content 'errors'
  end
end
