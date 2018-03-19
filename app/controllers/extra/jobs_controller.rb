module Extra
  class JobsController < BaseController


  before_action :find_job, only: [:show, :apply, :cancel_candidacy]
  

  def index
    if params[:category].blank?
    @jobs = scope.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @jobs = scope.where(category_id: @category_id).order("created_at DESC")
    end
    @jobs = @jobs.page().per(20)
  end

  def show
  end

    def apply
      success, result = Services::Extra::Apply.new(current_user, @job).call

      redirect_to extra_user_dashboard_path
    end
      
    def cancel_candidacy
      @job.destroy
      redirect_to extra_user_dashboard_path
    end


  private

  def scope
       # filtrer sur les jobs a pourvoir
       # ou les jobs qui ont ete pris pqr current_user
       Job.all
  end

  def jobs_params
    params.require(:job).permit(:title, :description, :experience, :date, :category_id, :userpro_id)
  end

  def find_job
    @job = scope.find(params[:id])
  end



  end
end