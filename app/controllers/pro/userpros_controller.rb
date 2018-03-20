module Pro
  class UserprosController < BaseController

    def dashboard
    	      @jobs = Job.all

    end
  end
end