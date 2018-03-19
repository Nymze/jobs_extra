module Services
  module Extra
    class Cancel_candidacy

      def initialize(user, job)
        @user = user
        @job  = job
      end

      def call
        user.jobs.destroy(job)

        [true, {}]
      end

      private

      attr_reader :user, :job

    end
  end
end