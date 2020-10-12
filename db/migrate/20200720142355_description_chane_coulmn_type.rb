class DescriptionChaneCoulmnType < ActiveRecord::Migration[6.0]
  def change
    change_column :jobs, :description, :text
    remove_column :jobs, :city
  end
end
