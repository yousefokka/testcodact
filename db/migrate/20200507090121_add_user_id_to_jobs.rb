class AddUserIdToJobs < ActiveRecord::Migration[6.0]
  def change
    add_reference :jobs, :user, index: true 
   end
end
