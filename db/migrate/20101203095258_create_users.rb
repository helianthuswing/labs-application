class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :alias
      t.string :email
      t.string :state
      t.datetime :loggedin_at

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
