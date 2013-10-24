class ServiceController < ApplicationController 

	def index
		@service = Service.all.delete_if{|service|service.name.blank?}
	end

	def new
	end
	
	def create
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
		Service.find(params[:service_id]).destroy
		redirect_to :action => 'index'
	end

	def create_variables
		#session[:service_type] = params[:service]
		redirect_to :controller=>"Vote", :action=>"question", :service_type => params[:service]
	end
end
