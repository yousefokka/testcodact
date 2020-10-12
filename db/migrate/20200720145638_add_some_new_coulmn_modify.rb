class AddSomeNewCoulmnModify < ActiveRecord::Migration[6.0]
  def change    
    add_column :sponsers, :sexprience, :string
    add_column :sponsers, :sponcerBio, :text    
    add_column :employees, :employeeBio, :text    
    add_column :employees, :Datafrom, :string
    add_column :employees, :Datato, :string
    add_column :ideamakers, :ideamakerBio, :text    
    add_column :ideamakers, :Website, :string    
    add_column :ideamakers, :size, :integer 
  end
end
