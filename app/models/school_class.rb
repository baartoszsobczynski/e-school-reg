class SchoolClass < ActiveRecord::Base

  validates :level,
            presence: true,
            length: { maximum: 1 },
            format: { with: /[1-3]/ }


  validates :indication,
            presence: true,
            length: { maximum: 2 },
            format: { with: /[A-Z]/ }

end
