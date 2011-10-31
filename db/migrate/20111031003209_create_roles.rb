class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.integer :movie_id
      t.integer :actor_id
      t.string :role_title

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
