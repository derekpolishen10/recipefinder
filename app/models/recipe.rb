class Recipe 
	include HTTParty
 ENV["FOOD2FORK_KEY"] = 'bbde78e489eafa7feac1d31a3fcd5377'
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json
 
 def self.for terms
 get("/search", query: { q: terms})["recipes"]
 end
end
