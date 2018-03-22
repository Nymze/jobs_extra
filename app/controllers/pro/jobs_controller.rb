module Pro
  class JobsController < BaseController

    before_action :find_job, only: [:show, :edit, :update, :destroy]
    

    def index
      if params[:category].blank?
      @jobs = scope.order("created_at DESC")
      else
        @category_id = Category.find_by(name: params[:category]).id
        @jobs = scope.where(category_id: @category_id).order("created_at DESC")
      end
    end

    def show
      @job = Job.find(params[:id])
    end

    def new
      @job = Job.new
    end

    def create
      @job = Job.new(jobs_params)

      if @job.save
        redirect_to pro_job_path(@job)  
      else
        render "New"
      end
    end

    def edit
    end

    def update
      if @job.update(jobs_params)
        redirect_to pro_job_path(@job)
      else
        render "Edit"
      end
    end

    def destroy
      @job.destroy
      redirect_to root_path
    end

<<<<<<< HEAD
    def validate
      success, result = Services::Pro::Validate.new(current_userpro, @job, @user).call

      redirect_to pro_userpro_dashboard_path
    end

=======
>>>>>>> master

    private

    def jobs_params
      params.require(:job).permit(:title, :description, :experience, :date, :category_id, :userpro_id)
    end

    def find_job
      @job = scope.find(params[:id])
    end

    def scope
      Job.all
    end



  end
end