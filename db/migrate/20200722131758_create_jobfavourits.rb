class CreateJobfavourits < ActiveRecord::Migration[6.0]
  def change
    create_table :jobfavourits do |t|
      t.belongs_to :user
      t.belongs_to :job

      t.timestamps
    end
  end
end
