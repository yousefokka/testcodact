class CreateJobresponces < ActiveRecord::Migration[6.0]
  def change
    create_table :jobresponces do |t|
      t.belongs_to :submitting
      t.string :Status
      
      t.timestamps
    end
  end
end
