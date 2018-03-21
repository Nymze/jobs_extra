module Extra
  class UsersController < BaseController
    
    def dashboard
      @jobs = Job.all
    end

    def show
    @user = current_user
    end

  end
end