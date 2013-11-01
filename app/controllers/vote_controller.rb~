class VoteController < ApplicationController

	def question
	
		@voteType = VoteType.all

	end
	
	def issue_description
	
		@issue = Issue.all
	end

	def store_vote_type

		client_id = params[:client_id]
		service_type = params[:service_type]

        if ((params[:answers])== "FULLY SATISFIED" || (params[:answers])== "SATISFIED")
        	
   
			redirect_to :controller=>"Vote", :action=>"save_vote", :client_id => client_id, 
           	:service_type => service_type,:vote_type => params[:answers]
		else 
			redirect_to :controller=>"Vote", :action=>"issue_description", :client_id => client_id, 
            :service_type => service_type,:vote_type => params[:answers]
		end
	end

	def finish
   		 client_id = params[:client_id]
   		 vote_type = params[:vote_type]
		service_type = params[:service_type]
		issues = params[:issue]
	
 	redirect_to :controller=>"Vote", :action=>"save_vote", :issues => issues, :vote_type => vote_type,
		:service_type => service_type, :client_id => client_id
	end

    def save_vote

        issues = params[:issues]
		
		vote = Vote.new
       
		
		vote.client_id =  params[:client_id] 
			
			
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

			end	if !issues.nil?

			redirect_to :controller=>"service", :action=>"index"
        #if the save then give a thanks massage then redirect to welcome page.
        else
           #if not save, take the user back to choising a service page.
        end
    end
 end
