def get_first_name_of_season_winner(data, season)
  # code here
	 data[season].each do |x|
	 	if x["status"] == "Winner"
	 		return x["name"].split.first
	 	end
	 end
end


def get_contestant_name(data, occupation)
  # code here
	data.each do |k, v|
		v.each do |i|
		 	if i["occupation"] == occupation
		 		return i["name"]
		 	end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |k,v|
  	v.each do |i|
  		if i["hometown"] == hometown
  			count += 1
  		end
  	end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |k,v|
  	v.each do |i|
  		if i["hometown"] == hometown
  			return i["occupation"]
  		end
  	end
  end
end


def get_average_age_for_season(data, season)
  # code here
	array_of_ages = []
	average = 0 
	data[season].collect do |x|
		 array_of_ages << x["age"].to_i
	end
	average = array_of_ages.sum / array_of_ages.size.to_f
	average.round
end
