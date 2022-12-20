class Api::PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
    # debugger
    # render json: @pokemons
    render :index
    # render "../../views/api/pokemon/index.json.jbuilder"
  end
end
