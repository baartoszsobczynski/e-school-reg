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

  describe "GET #new" do

    it "responds successful and with browser 200 status code" do
      get :new
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders valid template" do
      get :new
      expect(page).to render_template('new')
    end
  end

  describe "POST #create" do
    it "creates school_class when valid arguments" do
      count = SchoolClass.count
      post :create, :school_class => { level: (1..3).to_a.sample, indication: ('A'..'Z').to_a.sample }
      expect(SchoolClass.count).to be > count
      expect(flash).not_to be_empty
      expect(response).to redirect_to school_classes_path
    end
  end

  describe "GET #edit" do

    before(:each) do
      @school_class = FactoryGirl.create(:school_class)
    end

    it "responds successful and with browser 200 status code" do
      get :edit, id: @school_class.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders valid template" do
      get :edit, id: @school_class.id
      expect(page).to render_template('edit')
    end
  end
end
