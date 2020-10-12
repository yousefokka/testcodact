class CreateSponsers < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsers do |t|
      t.string :name
      t.string :Address
      t.string :Catagory
      t.string :Gander
      t.string :Funding
      t.string :Typemanagment
      t.string :phone

      t.timestamps
    end
  end
end
