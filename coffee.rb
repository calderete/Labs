require './human'
require 'pry'

class Coffee
	
		def initialize(flavor)
			@flavor = flavor
			#@num_of_swigs = 0

		end
		def cup_check(swigs)
			if swigs > 0
				:not_full
			elsif
				swigs == 3
				:empty
			elsif swigs == 0
				:full
			else
				:full
			end
		end

		def full?
			if :full
				true
			elsif :empty
				false
			else
				false
		end
	end

		def empty?
			if :empty
				true
			else
				false
			end
		end

end