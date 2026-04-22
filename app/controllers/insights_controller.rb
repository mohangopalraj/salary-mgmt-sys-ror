class InsightsController < ApplicationController
  
  def index
  end
  def country_stats
    @stats = Employee.salary_stats(params[:country])
    render :index
  end

  def job_title_stats
    @avg = Employee.job_title_avg(params[:country], params[:job_title])
    render :index
  end

end