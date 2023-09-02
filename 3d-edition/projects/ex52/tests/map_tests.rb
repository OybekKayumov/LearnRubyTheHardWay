require "gothonweb/map.rb"
require "test/unit"

class TestMap < Test::Unit::TestCase

  def test_room()
      gold = Map::Room.new("GoldMap::Room",
                  """This room has gold in it you can grab. There's a
              door to the north.""")
      assert_equal( "GoldMap::Room", gold.name)
      assert_equal({}, gold.paths)
  end

  def test_room_paths()
      center = Map::Room.new("Center", "Test room in the center.")
      north = Map::Room.new("North", "Test room in the north.")
      south = Map::Room.new("South", "Test room in the south.")

      center.add_paths({'north'=> north, 'south'=> south})
      assert_equal(north, center.go('north'))
      assert_equal(south, center.go('south'))

  end

  def test_map()
      start = Map::Room.new("Start", "You can go west and down a hole.")
      west = Map::Room.new("Trees", "There are trees here, you can go east.")
      down = Map::Room.new("Dungeon", "It's dark down here, you can go up.")

      start.add_paths({'west'=> west, 'down'=> down})
      west.add_paths({'east'=> start})
      down.add_paths({'up'=> start})

      assert_equal(west, start.go('west'))
      assert_equal(start, start.go('west').go('east'))
      assert_equal(start, start.go('down').go('up'))
  end

  def test_gothon_game_map()
      assert_equal(Map::GENERIC_DEATH, Map::START.go('shoot!'))
      assert_equal(Map::GENERIC_DEATH, Map::START.go('dodge!'))

      room = Map::START.go('tell a joke')
      assert_equal(Map::LASER_WEAPON_ARMORY, room)

      # complete this test by making it play the game
  end

  def test_session_loading()
      session = {}

      room = Map::load_room(session)
      assert_equal(room, nil)

      Map::save_room(session, Map::START)
      room = Map::load_room(session)
      assert_equal(room, Map::START)

      room = room.go('tell a joke')
      assert_equal(room, Map::LASER_WEAPON_ARMORY)

      Map::save_room(session, room)
      assert_equal(room, Map::LASER_WEAPON_ARMORY)
  end
end