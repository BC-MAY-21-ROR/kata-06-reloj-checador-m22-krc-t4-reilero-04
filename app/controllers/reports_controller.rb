# frozen_string_literal: true

class ReportsController < ApplicationController
  def index
    @reports = Attendance.all
  end



end
