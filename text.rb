@v = 0
@t = 0

Vote.where(["service_id=? And vote_type_id=?",1,20]).each do |s|
		if s.name == x
			@v = @v+ 1
		else
			@t = @t+1
		end
end
