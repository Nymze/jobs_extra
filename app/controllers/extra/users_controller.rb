module Extra
  class UsersController < BaseController
    
    def dashboard
      @jobs = Job.all
    end

  end
end