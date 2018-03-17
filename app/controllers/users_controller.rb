class UsersController < ApplicationController

 before_action :authenticate_user!
  
  def dashboard
  	@jobs = Job.all
  end

  def apply_for_job
  	job = Job.find(params[:job_id])
  	current_user.jobs << job
  	redirect_to user_dashboard_path
  end
  	
  def cancel_job_candidacy
  	job = Job.find(params[:job_id])
  	current_user.jobs.delete(job)
  	redirect_to user_dashboard_path
  end


end
