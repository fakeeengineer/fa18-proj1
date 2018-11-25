class PokemonsController < ApplicationController

    def capture
        @p = params[:id]
        @pokemon = Pokemon.find(@p)
        @trainer = current_trainer
        @pokemon.trainer = @trainer
        @pokemon.save
        redirect_to root_path
    end

    def damage
        @p = Pokemon.find(params[:id])
        @p.health -= 10
        if @p.health <= 0
            @p.destroy
        end
        @p.save
        redirect_to current_trainer
    end

    def new
        @pokemon = Pokemon.new
    end

    def create
    @p = Pokemon.create(pokemon_params)
    @p.health = 100
    @p.level = 1
    @p.trainer = trainer_id = current_trainer.id
    if @p.save
    redirect_to current_trainer
    else
        flash[:error] = @pokemon.errors.full_messages.to_sentence
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:name, :ndex)
    end

end
