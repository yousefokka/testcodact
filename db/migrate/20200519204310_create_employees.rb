class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :jobtybe
      t.string :jobcategory
      t.string :address
      t.string :salary
      t.string :Gander
      t.string :Qualifcation
      t.string :mobile
      t.string :Degree
      t.string :Indestry
      t.integer :Exprense

      t.timestamps
    end
  end
end
