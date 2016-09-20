require 'rails_helper'

# describe "the add instructions process" do
#   it "adds new instructions" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user, :run_callbacks => false)
#     dance = FactoryGirl.create(:dance)
#     figure = FactoryGirl.create(:figure)
#     visit dances_path
#     click_on "Add Instructions"
#     fill_in "Number", :with => "1"
#     fill_in "Move", :with => "Tops"
#     fill_in "Call", :with => "House"
#     fill_in "Bars", :with => 8
#     click_on "Create Instruction"
#     expect(page).to have_content 'Instructions successfully added!'
#   end
#
#   it "gives error when no number is entered" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user, :run_callbacks => false)
#     dance = FactoryGirl.create(:dance)
#     figure = FactoryGirl.create(:figure)
#     visit new_figure_instruction_path
#     fill_in "Number", :with => ""
#     click_on "Create Instruction"
#     expect(page).to have_content 'errors'
#   end
# end
