require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the StudentsHelper. For example:

RSpec.describe StudentsHelper, type: :helper do
  it "links to school class when student has it assigned" do
    school_class = FactoryGirl.create(:school_class)
    student = FactoryGirl.create(:student, school_class_id: school_class.id)

    correct_link = "<a href=\"/school_classes/1\">#{school_class.level}#{school_class.indication}</a>"

    expect(link_to_school_class_if_available(student.id)).to eq(correct_link)
  end

  it "gives name of school class when student hasn't it assigned" do
    student = FactoryGirl.create(:student)
    expect(link_to_school_class_if_available(student.id)).to eq("No class")
  end
end



