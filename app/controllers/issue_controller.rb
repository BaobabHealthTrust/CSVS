class IssueController < ApplicationController
	
  def create
	
		issue = Issue.new
		issue.name = params[:issue]
		issue.save 
		redirect_to :action => "new"
  end
	

	#should list issues which have been piut in the system
	#should be utilised by admin 2gether with edit and destroy
	
	def new

		
	end

	def list

	end

 	def edit
    end
	
	def destroy
	end

end
