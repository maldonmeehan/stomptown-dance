require 'rails_helper'

describe "the edit a course process" do
  it "edits a course" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    course = Course.create(:name => 'Course One')
    visit course_path(course)
    click_on 'Edit Course'
    fill_in 'Name', :with => 'Course Two'
    click_on 'Update Course'
    expect(page).to have_content 'Course Two'
  end

  it "gives error when no name is entered" do
    course = Course.create(:name => 'Course One')
    visit course_path(course)
    click_on 'Edit Course'
    fill_in 'Name', :with => ''
    click_on 'Update Course'
    expect(page).to have_content 'errors'
  end
end
