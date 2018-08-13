require 'rails_helper'

RSpec.feature "visitor home page" do
  context "successfully" do
    scenario "Visiting home page" do
      visit "/"
      expect(page).to have_content("Welcome to my Blog")
    end
  end
end