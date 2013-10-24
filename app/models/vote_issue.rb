require 'rubygems'
require 'composite_primary_keys'

class VoteIssue < ActiveRecord::Base
	set_table_name"vote_issues"
	set_primary_keys :issue_id, :vote_id
	belongs_to :vote
	belongs_to :issue
end
