class CreateOwners < ActiveRecord::Migration
  def self.up
    create_table :owners do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end

  def self.down
    drop_table :owners
  end
end
