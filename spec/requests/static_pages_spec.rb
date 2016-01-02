require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET #home" do
    it "has correct title" do
      visit '/'
      expect(page).to have_title("Home | eSchoolReg")
    end
  end

  describe "GET #about" do
    it "has correct title" do
      visit '/about'
      expect(page).to have_title("About | eSchoolReg")
    end
  end
end

