# require 'rails_helper'
#
# describe "the delete instructions process" do
#   it "edits a section" do
#     user = FactoryGirl.create(:user)
#     login_as(user, :scope => :user, :run_callbacks => false)
#     dance = Dance.create(:name => 'Dance One')
#     instruction = Instruction.create(:number => '1')
#     visit dance_path(dance)
#     click_on "Delete Instructions"
#     expect(page).to have_content 'Instructions successfully deleted!'
#   end
# end
