class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene
  def enter()
    
  end
end

class CentralCorridor < Scene
  @@quips = [
    "You died.  You kinda suck at this.",
    "Your mom would be proud...if she were smarter.",
    "Such a luser.",
    "I have a small puppy that's better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class LaseWeaponArmory < Scene
  def enter()
    
  end
end

class TheBridge < Scene
  def enter()
    
  end
end

class EscapedPod < Scene
  def enter()
    
  end
end

class Map
  def initialize(start_scene)
    # @start_scene = start_scene
  end

  def next_scene(scene_name)
    
  end

  def opening_scene()
    
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
p a_game.play()

