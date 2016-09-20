require 'rails_helper'

describe "the delete a course process" do
  it "deletes a course" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    course = FactoryGirl.create(:course)
    visit course_path(course)
    click_on 'Delete Course'
    expect(page).to have_content 'Course successfully deleted!'
  end
end
