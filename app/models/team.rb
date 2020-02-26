class Team
	attr_accessor :name, :motto

	def initialize(info)
		@name = info[:name]
		@motto = info[:motto]
	end

end