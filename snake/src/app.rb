require_relative "view/ruby2d"
require_relative "model/state"
require_relative "actions/actions"

class App
    def initialize
        @state = Model::initial_state
    end
    def start
		@view = View::Ruby2dView.new(self)
        timer_thread = Thread.new {init_timer(@view)}
        @view.start(@state)
        timer_thread.join # esperamos a que el timer tambien se cierre
	end
	def init_timer(view)
		loop do
            if @state.game_finished
                puts "Juego finalizado"
                puts "Puntaje: #{@state.snake.positions.length}"
                break
            end
            @state = Actions::move_snake(@state)
			# trigger mover serpiente
			view.render(@state)
            sleep 0.5
		end
	end
    def send_action(action, params)
        # :change_direction, Model::Direction::UP
        new_state = Actions.send(action, @state, params)
        # se calcula el hash del objeto
        if new_state.hash != @state.hash
            @state = new_state
            @view.render(@state)
        end
    end
end

app = App.new
app.start
