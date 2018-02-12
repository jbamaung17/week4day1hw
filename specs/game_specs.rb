require('minitest/autorun')
require('minitest/rg')

require_relative('../models/game.rb')

class TestGame < MiniTest::Test

  def setup
    @game = Game.new("rock", "scissors")
  end

  def test_play()
    assert_equal("rock wins!", @game.play)
  end

end
