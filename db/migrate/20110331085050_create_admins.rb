class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.string :user_name
      t.string :hashed_password

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
