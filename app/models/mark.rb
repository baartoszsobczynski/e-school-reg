class Mark < ActiveRecord::Base
  belongs_to :subject

  validates :grade,
            presence: true,
            length: { maximum: 1 },
            format: { with: /[1-6]/ }
end
