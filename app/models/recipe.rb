class Recipe
 	include HTTParty
 	ENV["FOOD2FORK_KEY"] = '773f06fe94c7770a828a0ef10af22a49'
 	#base_uri 'http://food2fork.com/api'
 	key_value = ENV['FOOD2FORK_KEY']
 	hostport = 'www.food2fork.com' || ENV['FOOD2FORK_SERVER_AND_PORT'] 
 	base_uri "http://#{hostport}/api"
 	default_params key: ENV["FOOD2FORK_KEY"]
 	format :json
 	
 	def self.for term
 		get("/search", query: { q: term})["recipes"]
 	end
end