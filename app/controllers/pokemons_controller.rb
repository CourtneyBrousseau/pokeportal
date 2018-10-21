class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update(trainer: current_trainer)
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@trainer = @pokemon.trainer
		@pokemon.update(health: @pokemon.health - 10)
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(@trainer)
	end
end
