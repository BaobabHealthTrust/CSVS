# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts 'loading Vote_types'
vote_types = ["FULLY SATISFIED","SATISFIED","ATLEAST SATISFIED","A BIT SATISFIED","NOT SATISFIED"]
  			 (vote_types).each do |name|
  			 v_type = VoteType.new()
 			 v_type.name = name
 			 v_type.save
	      end

puts 'loading services'
service_types = ["OPD","Martenity","Theatre","Eye","Dental","Skin Clinic","OB/Gyn",	 "Casualties",
				 "Medical","Pediatrics","Family Planning","Surgical","Orthropedics","Radiology"]
  			 (service_types).each do |name|
  			 s_type = Service.new()
 			 s_type.name = name
 			 s_type.save
	      end

puts 'loading issues'
 issues = ["No Medicine","No security","Harsh Attitude Nurses","Unhygienic rooms","Unhygienic bedings","Delay treatment",
			"Careless Nurses"
			]
  			 (issues).each do |name|
  			 is_type = Issue.new()
 			 is_type.name = name
 			 is_type.save
	      end
