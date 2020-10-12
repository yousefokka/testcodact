class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :jtype
      t.string :catagory
      t.string :address
      t.string :salary
      t.string :gander
      t.string :country
      t.string :city
      t.string :qualification
      t.string :experience
      t.string :description

      t.timestamps
    end
  end
end
