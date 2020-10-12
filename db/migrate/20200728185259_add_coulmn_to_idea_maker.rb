class AddCoulmnToIdeaMaker < ActiveRecord::Migration[6.0]
  def change
    add_column :ideamakers, :ownernaem, :string
    add_column :ideamakers, :ownerphono, :string
    add_column :ideamakers, :owneraddress, :string
    add_column :ideamakers, :companyemail, :string
  end
end
