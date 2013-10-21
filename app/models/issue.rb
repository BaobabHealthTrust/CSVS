class Issue < ActiveRecord::Base
	
	set_table_name"issues"
	set_primary_key"issue_id"
 	has_many :vote_issues
		
end
