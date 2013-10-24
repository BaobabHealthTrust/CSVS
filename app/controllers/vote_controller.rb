class VoteController < ApplicationController

	def question
	
		@voteType = VoteType.all

	end
	
	def issue_description
	
		@issue = Issue.all
	end

	def store_vote_type
         #raise params.to_yaml
		#session[:vote_Name] = params[:answers]
		service_type = params[:service_type]
		redirect_to :controller=>"Vote", :action=>"issue_description", :service_type => service_type,
			:vote_type => params[:answers]
	end

	def finish
    #session[:issues_select] = params[:issues]
	issues = params[:issues]
	vote_type = params[:vote_type]
	service_type = params[:service_type]
 	redirect_to :controller=>"Vote", :action=>"save_vote", :issues => issues, :vote_type => vote_type,
		:service_type => service_type
	end

    def save_vote
		
        issues = params[:issues]
		#raise params.to_yaml
		vote = Vote.new
		
		vote.client_id =  7 #the value  is a testing static value which should be replaced by a hashed string from client
			
			
        vote.vote_type_id =  VoteType.find_by_name(params[:vote_type]).id
		vote.service_id = 	 Service.find_by_name(params[:service_type]).id
		
         
	    if vote.save

            vote_id = Vote.last.id
			
			issues.each do |issue|
			
				issue_id = Issue.find_by_name(issue).id
			
				vote_issue = VoteIssue.new
				
				vote_issue.vote_id = vote_id
				vote_issue.issue_id = issue_id
				vote_issue.save

				end			
			redirect_to :controller=>"service", :action=>"index"
        #if the save then give a thanks massage then redirect to welcome page.
        else
           #if not save, take the user back to choising a service page.
        end
    end
 end 
