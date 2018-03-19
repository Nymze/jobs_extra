module Services
	module Extra
		class Apply

			def initialize(user, job)
        @user = user
        @job  = job
			end

			def call
	    	 user.jobs << job

	    	 [true, {}]
			end

			private

      attr_reader :user, :job

		end
	end
end