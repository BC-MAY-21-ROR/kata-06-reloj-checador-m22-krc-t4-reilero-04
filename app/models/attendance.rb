class Attendance < ApplicationRecord

#   include PgSearch::Model
#   pg_search_scope :search_full_text, against: {
#       check_in: 'A'

#   }
  belongs_to :employee
end
