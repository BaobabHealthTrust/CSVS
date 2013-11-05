class AdminController < ApplicationController
  def index
  end

  def login
  end

  def menu
  
    full_id = VoteType.find_by_name("FULLY SATISFIED").id
	sat_id = VoteType.find_by_name("SATISFIED").id
	atleast_id = VoteType.find_by_name("ATLEAST SATISFIED").id
	abit_id = VoteType.find_by_name("A BIT SATISFIED").id
	unsat_id = VoteType.find_by_name("NOT SATISFIED").id
	
	
	@total = Vote.where(["created_at>=? AND created_at<=?" ,
							DateTime.now.beginning_of_day,DateTime.now]).count
    @fulsat = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,full_id,
							DateTime.now.beginning_of_day,DateTime.now]).count
    @sat = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,sat_id,
							DateTime.now.beginning_of_day,DateTime.now]).count
	@alsat = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,atleast_id,
							DateTime.now.beginning_of_day,DateTime.now]).count
    @abtsat = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,abit_id,
							DateTime.now.beginning_of_day,DateTime.now]).count
    @notsat = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,unsat_id,
							DateTime.now.beginning_of_day,DateTime.now]).count
	
	@mt = Vote.where(["created_at>=? AND created_at<=?" ,
							DateTime.now.beginning_of_month,DateTime.now]).count
    @mfs = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,full_id,
							DateTime.now.beginning_of_month,DateTime.now]).count
    @ms = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,sat_id,
							DateTime.now.beginning_of_month,DateTime.now]).count
	@mals = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,atleast_id,
							DateTime.now.beginning_of_month,DateTime.now]).count
    @mabs = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,abit_id,
							DateTime.now.beginning_of_month,DateTime.now]).count
    @mns = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,unsat_id,
							DateTime.now.beginning_of_month,DateTime.now]).count

	@yt = Vote.where(["created_at>=? AND created_at<=?" ,
							DateTime.now.beginning_of_year,DateTime.now]).count
    @yfs = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,full_id,
							DateTime.now.beginning_of_year,DateTime.now]).count
    @ys = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,sat_id,
							DateTime.now.beginning_of_year,DateTime.now]).count
	@yals = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,atleast_id,
							DateTime.now.beginning_of_year,DateTime.now]).count
    @yabs = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,abit_id,
							DateTime.now.beginning_of_year,DateTime.now]).count
    @yns = Vote.where(["vote_type_id =? AND created_at>=? AND created_at<=?" ,unsat_id,
							DateTime.now.beginning_of_year,DateTime.now]).count
   render :layout => 'report'
  end

  def admin_opt
   render :layout => 'report'
  end
 
  def authenticate
	
	redirect_to :action => "menu"
  end

end
