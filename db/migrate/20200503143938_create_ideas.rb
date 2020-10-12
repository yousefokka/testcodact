class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :Management
      t.string :ideacatagory
      t.string :address
      t.string :funding
      t.string :ideaDescription

      t.timestamps
    end
  end
end
