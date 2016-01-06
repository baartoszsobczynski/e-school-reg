require 'rails_helper'

RSpec.describe Subject, type: :model do
  it "has a valid factory" do
    subject = FactoryGirl.build(:subject)
    expect(subject).to be_valid
  end

  it "is invalid when name is blank" do
    subject = FactoryGirl.build(:subject, name: nil)
    expect(subject).not_to be_valid

  end
end
