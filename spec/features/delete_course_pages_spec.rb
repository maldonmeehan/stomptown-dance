require 'rails_helper'

describe "the edit a course process" do
  it "edits a course" do
    course = Course.create(:name => 'Course One')
    visit course_path(course)
    click_on 'Delete Course'
    expect(page).to have_content 'Courses'
  end
end
