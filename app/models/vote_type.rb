class VoteType < ActiveRecord::Base

	set_table_name"vote_types"
	set_primary_key"vote_type_id"
	has_many :votes
end
