require 'rails_helper'

RSpec.describe SchoolClass, type: :model do

  it "has a valid factory" do
    school_class = FactoryGirl.create(:school_class)
    expect(school_class).to be_valid
  end

  it "is invalid without a level" do
    school_class = FactoryGirl.build(:school_class, level: nil)
    expect(school_class).not_to be_valid
  end

  it "is invalid without a indication" do
    school_class = FactoryGirl.build(:school_class, indication: nil)
    expect(school_class).not_to be_valid
  end

  it "is invalid when level is greater than 3" do
    school_class = FactoryGirl.build(:school_class, level: 4)
    expect(school_class).not_to be_valid
  end

  it "is invalid when indication has more letters than 2" do
    school_class = FactoryGirl.build(:school_class, indication: "GAA")
    expect(school_class).not_to be_valid
  end
end
