require 'rails_helper'

RSpec.describe Mark, type: :model do

  it "has a valid factory" do
    mark = FactoryGirl.build(:mark)
    expect(mark).to be_valid
  end

  it "is invalid when grade longer than 1 number" do
    mark = FactoryGirl.build(:mark, grade: 22)
    expect(mark).not_to be_valid
  end

  it "is invalid when not a number" do
    mark = FactoryGirl.build(:mark, grade: "A")
    expect(mark).not_to be_valid
  end

  it "is invalid when grade is blank" do
    mark = FactoryGirl.build(:mark, grade: nil)
    expect(mark).not_to be_valid
  end

  it "is invalid when grade is out of (1-6) range" do
    mark = FactoryGirl.build(:mark, grade: 7)
    expect(mark).not_to be_valid
  end
end
