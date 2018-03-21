module Extra
  class UsersController < BaseController
    
    def dashboard
      @jobs = Job.all
    end


    def show
      @user = User.find(params[:id])
    end 

    
  end
end