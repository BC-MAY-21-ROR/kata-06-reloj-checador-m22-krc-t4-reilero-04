# frozen_string_literal: true

class Employee < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :global_search, against: [:name, :email], using: { tsearch: { prefix: true } }

  acts_as_paranoid

  belongs_to :store
  has_many :attendances

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :store
  has_many :attendances

  def active_for_authentication?
    # remember to call the super
    # then put our own check to determine "active" state using
    # our own "is_active" column
    super and admin?
  end


end
