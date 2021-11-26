# Representacion del estado del juego

module Model
	module Direction
		UP = :up
		RIGHT = :right
		DOWN = :down
		LEFT = :left
	end

	class Coordinate < Struct.new(:row, :col)

	end

	class Food < Coordinate
		COLOR = 'yellow'
	end

	class Snake < Struct.new(:positions)
		COLOR = 'green'
	end

	class Grid < Struct.new(:rows, :cols)

	end

	class State < Struct.new(:snake, :food, :grid, :curr_direction, :game_finished)

	end

	def self.initial_state
		Model::State.new(
			Model::Snake.new([
				Model::Coordinate.new(1,1),
				Model::Coordinate.new(0,1)
			]),
			Model::Food.new(4,4),
			Model::Grid.new(9,9),
			Direction::DOWN,
			false
		)
	end
end
