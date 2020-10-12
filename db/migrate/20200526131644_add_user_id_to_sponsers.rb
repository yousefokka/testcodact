class AddUserIdToSponsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :sponsers, :user, index: true 

  end
end
