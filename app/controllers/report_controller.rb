class ReportController < ApplicationController
	
	 def show
	  @service = Service.all.delete_if{|service|service.name.blank?}
		render :get_report_specs
	 end
   
     def get_report_specs

	   @service = Service.all.delete_if{|service|service.name.blank?}
              
     end
  
      def display_report

		 @dept = params[:dept]	
   		 dept = Service.find_by_name(params[:dept]).id
    	 period = params[:period]
	 
		 case period
			when "DAY"
			@total 		   = Vote.where(["service_id=? AND created_at >=?",dept,Time.now-1.day]).count
           
			@fullysatified =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											1.day,17]).count 
            @satisfies     =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											1.day,18]).count 
			@atleast	   =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											1.day,19]).count 
			@abit          =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											1.day,20]).count 
			@notsat        =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 			
								1.day,21]).count 
		 when "WEEK"
			@total 		   = Vote.where(["service_id=? AND created_at >=?",dept,Time.now-7.day]).count			
			
			@fullysatified =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											7.day,17]).count 
            @satisfies     =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											7.day,18]).count 
			@atleast	   =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											7.day,19]).count 
			@abit          =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											7.day,20]).count 
			@notsat        =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 			
								7.day,21]).count
		when "MONTH" 
			@total 		   = Vote.where(["service_id=? AND created_at >=?",dept,Time.now-30.day]).count
			
			@fullysatified =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											30.day,17]).count 
            @satisfies     =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											30.day,18]).count 
			@atleast	   =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											30.day,19]).count 
			@abit          =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											30.day,20]).count 
			@notsat        =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 			
								30.day,21]).count
       else
			@total 		   = Vote.where(["service_id=? AND created_at >=?",dept,Time.now-365.day]).count
		
			@fullysatified =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											365.day,17]).count 
            @satisfies     =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											365.day,18]).count 
			@atleast	   =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											365.day,19]).count 
			@abit          =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 											365.day,20]).count 
			@notsat        =Vote.where(["service_id=? AND created_at >=? AND vote_type_id=?",dept,Time.now- 			
								365.day,21]).count
		end
		

	end

	
	
end
