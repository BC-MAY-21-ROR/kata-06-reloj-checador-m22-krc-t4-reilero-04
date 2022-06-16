# frozen_string_literal: true

class Store < ApplicationRecord
    has_many :employees

    def full_store
      self.name + " " + self.address
    end
end
