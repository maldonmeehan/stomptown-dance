require 'rails_helper'

describe "the delete a section process" do
  it "deletes a section" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    course = Course.create(:name => 'Course One')
    section = Section.create(:name => 'Section One', :course_id => course.id)
    visit course_path(course)
    click_on "Delete Section"
    expect(page).to have_content 'Course One'
  end
end
