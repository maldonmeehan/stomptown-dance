# require 'rails_helper'
#
# describe "the edit instructions process" do
#   it "edits instructions" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user, :run_callbacks => false)
#     dance = FactoryGirl.create(:dance)
#     figure = FactoryGirl.create(:figure)
#     instruction = FactoryGirl.create(:instruction)
#     visit dance_path(dance)
#     click_on 'Edit Instructions'
#     fill_in 'Number', :with => '2'
#     click_on 'Edit Instruction'
#     expect(page).to have_content 'Instruction successfully eddited!'
#   end
#
# end
