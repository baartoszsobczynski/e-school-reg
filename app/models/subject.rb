class Subject < ActiveRecord::Base
  has_many :marks

  validates :name,
            presence: true
end
