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

	def new
		@pokemon = Pokemon.new
	end

	def create
    	@pokemon = Pokemon.new
    	@pokemon.name = params[:name]
    	@pokemon.ndex = params[:ndex]
    	@pokemon.trainer = current_trainer
    	@pokemon.health = 100
    	@pokemon.level = 1
    	@pokemon.save
    	redirect_to trainer_path(current_trainer)
  	end

  	private
    def pokemon_params
    	params.permit(:name, :ndex)
    end
end
