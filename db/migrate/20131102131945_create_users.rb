class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
	    t.column	:username,	:string,	:length => 25, :default => "", :null => false
	    t.column	:hashed_password,	:string,	:length => 40, :default => "", :null => false
		t.column	:first_name,	:string,	:length => 25, :default => "", :null => false
		t.column	:last_name,	:string,	:length => 40, :default => "", :null => false
		t.column	:display_name,	:string,	:length => 25, :default => "", :null => false
		t.column	:user_level,	:string,	:length => 25, :default => 0, :null => false
	    t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
