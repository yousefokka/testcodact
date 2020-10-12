class DropTableJobResponce < ActiveRecord::Migration[6.0]
  def change
    drop_table :jobresponces
  end
end
