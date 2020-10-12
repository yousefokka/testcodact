class CreateIdeamakers < ActiveRecord::Migration[6.0]
  def change
    create_table :ideamakers do |t|
      t.string :name
      t.string :jobtitle
      t.string :addree
      t.string :location
      t.string :Gander
      t.string :qualifiction
      t.string :mobile
      t.string :interstingfield
      t.string :indestry

      t.timestamps
    end
  end
end
