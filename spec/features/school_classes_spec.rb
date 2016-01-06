require 'rails_helper'

RSpec.feature "SchoolClasses", type: :feature do

  before(:each) do
    @school_class = FactoryGirl.create(:school_class)
  end

  scenario "add new school class" do
    visit 'school_classes/new'
    fill_in "school_class[level]", with: (1..3).to_a.sample
    fill_in "school_class[indication]", with: ("A".."Z").to_a.sample
    click_button "Create"
    expect(page).to have_text("You have successfully added a new class.")
  end

  scenario "edit a school class" do
    visit "school_classes/#{@school_class.id}/edit"
    fill_in "school_class[level]", with: (1..3).to_a.sample
    fill_in "school_class[indication]", with: ("A".."Z").to_a.sample
    click_button "Create"
    expect(page).to have_text("School class updated")
  end
end
