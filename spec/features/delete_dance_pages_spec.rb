require 'rails_helper'

describe "the delete a dance process" do
  it "deletes a dance" do
    dance = Dance.create(:name => 'Dance One')
    visit dance_path(dance)
    click_on 'Delete Dance'
    expect(page).to have_content 'Dance successfully deleted!'
  end
end
