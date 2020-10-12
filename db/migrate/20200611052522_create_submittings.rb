class CreateSubmittings < ActiveRecord::Migration[6.0]
  def change
    create_table :submittings do |t|
      t.belongs_to :job
      t.belongs_to :user

      t.timestamps
    end
  end
end
