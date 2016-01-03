require 'rails_helper'

RSpec.describe SchoolClassesController, type: :controller do

  describe "GET #index" do
    it "responds successful and with browser 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders valid template" do
      get :index
      expect(page).to render_template('index')
    end
  end
end
