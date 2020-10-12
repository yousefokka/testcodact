class DescariptionChaneCoulmnType < ActiveRecord::Migration[6.0]
  def change
    change_column :ideas, :ideaDescription, :text    

  end
end
