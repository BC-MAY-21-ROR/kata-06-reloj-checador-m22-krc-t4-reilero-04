class ReportsController < ApplicationController

  def index
    @report = Employee.all
  end

end