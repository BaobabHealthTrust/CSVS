class VoteController < ApplicationController

	def question
	
		@voteType = VoteType.all

	end
	
	def issue_description
	
		@issue = Issue.all
	end

	def store_vote_type
         #raise.params_to_yaml
		session[:vote_Type] = params[:voteType]
		redirect_to :controller=>"Vote", :action=>"issue_description"
	end

	def finish
    #raise.params_to_yaml
 	redirect_to :controller=>"service", :action=>"index"
	end
end
