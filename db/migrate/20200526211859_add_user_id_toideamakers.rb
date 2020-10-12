class AddUserIdToideamakers < ActiveRecord::Migration[6.0]
  def change
    add_reference :ideamakers, :user, index: true 

  end
end
