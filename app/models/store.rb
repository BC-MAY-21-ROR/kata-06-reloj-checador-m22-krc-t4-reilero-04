# frozen_string_literal: true

class Store < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search, against: %i[name address], using: { tsearch: { prefix: true } }

  has_many :employees

  def full_store
    name + ' ' + address
  end
end
