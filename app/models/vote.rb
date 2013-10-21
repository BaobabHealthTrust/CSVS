class Vote < ActiveRecord::Base

	set_table_name"votes"
	set_primary_key"vote_id"
	has_many :vote_issues
	belongs_to :service
	belongs_to :vote_type
end
