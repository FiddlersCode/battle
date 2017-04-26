class Player
  DEFAULT_LASER_STRIKES = 10
  attr_reader :name, :laser_strikes

  def initialize(name, laser_strikes = DEFAULT_LASER_STRIKES)
    @name = name
    @laser_strikes = laser_strikes
  end
  
  def sustain_damage
    @laser_strikes -= 1
  end
end
