class ReportController < ApplicationController
	
	 def show
	  @service = Service.all.delete_if{|service|service.name.blank?}
		render :choose_report
	 end
   
     def get_report_specs

		@service=params[:service]
		service = Service.find_by_name(params[:service]).id
		start_date = Date.parse(params[:start_date])
		end_date =  Date.parse(params[:end_date])
		
		full_id = VoteType.find_by_name("FULLY SATISFIED").id
		sat_id = VoteType.find_by_name("SATISFIED").id
		atleast_id = VoteType.find_by_name("ATLEAST SATISFIED").id
		abit_id = VoteType.find_by_name("A BIT SATISFIED").id
		unsat_id = VoteType.find_by_name("NOT SATISFIED").id
		
		@total = Vote.where(["service_id=? AND DATE(created_at)>=? AND Date(created_at)<=?",
										service,start_date,end_date]).count
        @fullysatisfied = Vote.where(["service_id=? AND DATE(created_at)>=? AND Date(created_at)<=? AND vote_type_id=?",
										service,start_date,end_date,full_id]).count
		@satisfied = Vote.where(["service_id=? AND DATE(created_at)>=? AND Date(created_at)<=? AND vote_type_id=?",
										service,start_date,end_date,sat_id]).count
	   @atleast= Vote.where(["service_id=? AND DATE(created_at)>=? AND Date(created_at)<=? AND vote_type_id=?",
										service,start_date,end_date,atleast_id]).count
	    @abit = Vote.where(["service_id=? AND DATE(created_at)>=? AND Date(created_at)<=? AND vote_type_id=?",
										service,start_date,end_date,abit_id]).count
	    @notsat= Vote.where(["service_id=? AND DATE(created_at)>=? AND Date(created_at)<=? AND vote_type_id=?",
										service,start_date,end_date,unsat_id]).count
	     end	
end
