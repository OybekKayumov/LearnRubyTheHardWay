class Scene
  def enter()
  end
end

class Engine
  def initialize(scene_map)
    # @scene_map = scene_map
  end

  def play()
    
  end
end

class Death < Scene
  def enter()
    
  end
end

class CentralCorridor < Scene
  def enter()
    
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
a_game.play()

