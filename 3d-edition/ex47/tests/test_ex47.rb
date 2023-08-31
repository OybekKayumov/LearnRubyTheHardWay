require "../ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

  def test_sample
    assert_equal(4, 2+2)
  end

  def test_room()
    gold = Room.new("GoldRoom",
      """This room has gold in it you can grab. There's a door to the north."""
    )

    assert_equal("GoldRoom", gold.name)
    assert_equal({}, gold.paths)
  end
  
end