module Services
  module Pro
    class Validate

      def initialize(user, job, pro)
        @user = job.users
        @job  = job
        @pro = userpro
      end

      def call
        pro.jobs(job) << user

        [true, {}]
      end

      private

      attr_reader :user, :job

    end
  end
end