class CreateVoteIssues < ActiveRecord::Migration
  def self.up
    create_table :vote_issues, :id => false do |t|
      t.integer :vote_id
      t.integer :issue_id
      t.timestamps
    end
	execute("ALTER TABLE vote_issues ADD PRIMARY KEY(vote_id, issue_id)")
  end

  def self.down
    drop_table :vote_issues
  end
end
