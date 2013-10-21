class CreateVoteTypes < ActiveRecord::Migration
  def self.up
    create_table :vote_types, :primary_key => :vote_type_id  do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :vote_types
  end
end
