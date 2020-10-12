class RemoveColumnFromJob < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :country
    rename_column :sponsers, :sexprience, :exprience
  end
end
