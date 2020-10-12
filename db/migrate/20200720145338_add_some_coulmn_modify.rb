class AddSomeCoulmnModify < ActiveRecord::Migration[6.0]
  def change   
    remove_column :ideamakers, :indestry
    remove_column :ideamakers, :jobtitle
    remove_column :ideamakers, :location
  end
end
