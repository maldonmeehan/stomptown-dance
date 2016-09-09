require 'rails_helper'

describe "the edit a section process" do
  it "edits a section" do
    course = Course.create(:name => 'Course One')
    section = Section.create(:name => 'Section One', :course_id => course.id)
    visit course_path(course)
    click_on "Delete"
    expect(page).to have_content 'Course One'
  end
end
