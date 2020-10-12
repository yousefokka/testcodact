class AddCoulmnToFund < ActiveRecord::Migration[6.0]
  def change
    add_column :funds, :Responce, :string , default: "Waiting"
  end
end
