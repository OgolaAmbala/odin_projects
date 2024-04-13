# frozen_string_literal: true

class Game
  attr_accessor :player, :location, :token, :move

  def initialize(player, location, token)
    @player = player
    @location = location
    @token = token
    @move = []
  end

  class Player < Game
    def place_token; end
  end
end
