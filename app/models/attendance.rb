class Attendance < ApplicationRecord
  scope :group_by_month, -> { group("date_trunc('month', check_in) ") }
  belongs_to :employee
end
