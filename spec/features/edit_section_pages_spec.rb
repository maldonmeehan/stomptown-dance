require 'rails_helper'

describe "the edit a section process" do
  it "edits a section" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    course = Course.create(:name => 'Course One')
    section = Section.create(:name => 'Section One', :course_id => course.id)
    visit course_path(course)
    click_on 'Edit'
    fill_in 'Name', :with => 'Section Two'
    click_on 'Update Section'
    expect(page).to have_content 'Section Two'
  end

  it "gives error when no name is entered" do
    course = Course.create(:name => 'Course One')
    section = Section.create(:name => 'Section One', :course_id => course.id)
    visit course_path(course)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_button 'Update Section'
    expect(page).to have_content 'errors'
  end
end
