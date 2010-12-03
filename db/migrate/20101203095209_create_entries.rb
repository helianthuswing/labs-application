class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.references :blog
      t.references :user
      t.string :name
      t.text :body
      t.string :state
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
