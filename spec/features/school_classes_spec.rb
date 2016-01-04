require 'rails_helper'

RSpec.feature "SchoolClasses", type: :feature do
  scenario "add new school class" do
    visit 'school_classes/new'

    fill_in "school_class[level]", with: "1"
    fill_in "school_class[indication]", with: "A"
    click_button "Create"
    expect(page).to have_text("You have successfully added a new class.")
  end
end
