class AddUserToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_reference :ideas, :user, index: true 

  end
end
