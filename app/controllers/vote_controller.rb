class VoteController < ApplicationController

	def question
	
		@voteType = VoteType.all

	end
	
	def issue_description
	
		@issue = Issue.all
	end

	def store_vote_type
         #raise.params_to_yaml
		session[:vote_Name] = params[:answers]
		service_type = params[:service_type]
		redirect_to :controller=>"Vote", :action=>"issue_description", :service_type => service_type,
			:vote_type => params[:answers]
	end

	def finish
    session[:issues_select] = params[:issues]
	issues = params[:issues]
	vote_type = params[:vote_type]
	service_type = params[:service_type]
 	redirect_to :controller=>"Vote", :action=>"save_vote", :issues => issues, :vote_type => vote_type,
		:service_type => service_type
	end

    def save_vote	
		raise params.
    end
end
