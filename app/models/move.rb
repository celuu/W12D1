# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    validates :name, presence: true, uniqueness: { message: "'%{value}' is already in use" }

    belongs_to :poke_move

    has_many :pokemon, through: :poke_move, source: :pokemons
end
