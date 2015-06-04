class GamesController < ApplicationController

	def index
		@numeroAleatorio = rand(Word.count)
		@palabraAdivinar = Word.find @numeroAleatorio+1

		@arrayPalabra = []
		@arrayJugador = []

		for i in 1..@palabraAdivinar.letter.length
			@arrayPalabra.push(@palabraAdivinar.letter[i-1])
			@arrayJugador.push("_ ")
		end

	end

	def search
		@palabraAdivinar
		@arrayPalabra
		@arrayJugador

		@word = params[:search]
		#render 'index'
		redirect_to root_path
	end
end
