class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :name,:null => false
      t.string :isbn
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
