require 'rails_helper'

describe "the delete a course process" do
  it "deletes a course" do
    course = FactoryGirl.create(:course)
    visit course_path(course)
    click_on 'Delete Course'
    expect(page).to have_content 'Course successfully deleted!'
  end
end
