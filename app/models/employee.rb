# frozen_string_literal: true

class Employee < ApplicationRecord
    acts_as_paranoid
    
    belongs_to :stores
    has_many :attendances
end
