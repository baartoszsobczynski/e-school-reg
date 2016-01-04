class Student < ActiveRecord::Base
  belongs_to :school_class
  validates :first_name,
            presence: true,
            length: { maximum: 50 }

  validates :last_name,
            presence: true,
            length: { maximum: 50 }
end
