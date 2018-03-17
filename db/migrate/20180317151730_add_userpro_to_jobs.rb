class AddUserproToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :userpro_id, :integer
  end
end
