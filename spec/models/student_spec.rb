require 'rails_helper'

RSpec.describe Student, type: :model do

  it "has a valid factory" do
    student = FactoryGirl.create(:student)
    expect(student).to be_valid
  end
  it "is invalid without a first name" do
    student = FactoryGirl.build(:student, first_name: nil)
    expect(student).not_to be_valid
  end
  it "is invalid without a last name" do
    student = FactoryGirl.build(:student, last_name: nil)
    expect(student).not_to be_valid
  end

  it "is invalid when first name longer than 50" do
    f_name = "a" * 51
    student = FactoryGirl.build(:student, first_name: f_name)
    expect(student).not_to be_valid
  end

  it "is invalid when last name longer than 50" do
    l_name = "a" * 51
    student = FactoryGirl.build(:student, last_name: l_name)
    expect(student).not_to be_valid
  end
end
