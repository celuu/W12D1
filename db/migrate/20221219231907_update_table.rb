class UpdateTable < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :items, :pokemons, column: :pokemon_id

  end
end
