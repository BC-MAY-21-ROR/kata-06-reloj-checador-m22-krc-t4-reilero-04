# frozen_string_literal: true

class Employee < ApplicationRecord
    acts_as_paranoid
    
    belongs_to :store
    has_many :attendances
end
