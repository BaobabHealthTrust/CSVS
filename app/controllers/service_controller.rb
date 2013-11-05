class ServiceController < ApplicationController 

	def index
		render :layout => 'barcode'
	end

	def keep_barcode
	
	
	  clientId= Digest::SHA1.hexdigest(params[:barcode])
       
      validate_time = Vote.where(["client_id =? AND created_at >= ?", clientId, Time.now - 2.hour])

   	   if !(validate_time.blank?)

				    flash[:notice] = "you have already voted.Thank you"
					redirect_to :controller=>"service", :action=>"index"
	     else
	      			redirect_to :controller=>"service", :action=>"service_list", :client_id => clientId
       end


	end

	def service_list
	
     @service = Service.all.delete_if{|service|service.name.blank?}
	end

	def new
	end
	
	def create
		
		#creating services to be used
		name = params[:service]
		service = Service.new
		service.name = name
		 service.save 
		redirect_to :action => "new"
		
    end

	def edit
	end
	
	def show
	end

	def update
	end

	def destroy
		#not tested by wanted to implement destroy servidce
		Service.find(params[:service_id]).destroy
		redirect_to :action => 'index'
	end

	def create_variables
		
   		    client_id = params[:client_id]
		redirect_to :controller=>"Vote", :action=>"question",:client_id => client_id, :service_type => params[:service]
		 end
	end

