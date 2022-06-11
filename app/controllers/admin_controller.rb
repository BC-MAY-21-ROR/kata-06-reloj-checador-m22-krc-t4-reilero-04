# frozen_string_literal: true

class AdminController < ApplicationController
  def index
    @admins = Employee.where(admin: true)
  end

  def show; end
end
