class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(trainer: current_trainer)
		redirect_to root_path
	end
end
