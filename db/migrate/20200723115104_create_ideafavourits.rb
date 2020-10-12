class CreateIdeafavourits < ActiveRecord::Migration[6.0]
  def change
    create_table :ideafavourits do |t|
      t.belongs_to :user
      t.belongs_to :idea

      t.timestamps
    end
  end
end
