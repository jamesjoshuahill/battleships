class Player

	attr_reader :name, :board

	def initialize name, board
		@name = name
		@board = board
	end

	def board_has_ships_still_floating?
		true if ship_units_remaining > 0
		#assume each ship has between 1 and 4 ship units
	end

	def ship_units_remaining
		ship_units_available - ship_units_hit
	end

	def ship_units_available
		#placeholder
		20
	end

	def ship_units_hit
		#placeholder
		19
	end

end
