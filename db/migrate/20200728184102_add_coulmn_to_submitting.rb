class AddCoulmnToSubmitting < ActiveRecord::Migration[6.0]
  def change
    add_column :submittings, :Responce, :string , default: "Waiting"
  end
end
