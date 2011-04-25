class CreateManagers < ActiveRecord::Migration
  def self.up
    create_table :managers do |t|
      t.integer :user_id
      t.string :title
      t.string :status
      t.string :deadline
      t.string :assignsto

      t.timestamps
    end
  end

  def self.down
    drop_table :managers
  end
end
