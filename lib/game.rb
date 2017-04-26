class Game
  def attack(player)
    player.sustain_damage
  end

  def sustain_damage
    @laser_strikes -= 1
  end
end
