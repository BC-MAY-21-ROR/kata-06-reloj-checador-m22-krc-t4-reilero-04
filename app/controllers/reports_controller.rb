# frozen_string_literal: true

class ReportsController < ApplicationController
  def index
    @report = Employee.all
  end
end
