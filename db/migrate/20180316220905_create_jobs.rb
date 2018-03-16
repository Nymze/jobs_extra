class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :experience
      t.datetime :date

      t.timestamps
    end
  end
end
