class VoteTypeController < ApplicationController

  def create
	 
		voteType = VoteType.new
		voteType.name = params[:voteType]
		voteType.save 
		redirect_to :action => "new"
  end
	def new
	end

	def destroy
	end
end
