class CreateUsers < ActiveRecord::Migration[5.1]

  def up
    create_table :users do |t|
      t.string "first_name", :limit => 35
      t.string "last_name", :limit => 50
      t.string "email", :limit => 100, :default => '', :null => false
      t.string "username", :limit => 25
      t.string "password", :limit => 40

      t.timestamps
    end
  end

  def down
    drop_table :users
  end

end
