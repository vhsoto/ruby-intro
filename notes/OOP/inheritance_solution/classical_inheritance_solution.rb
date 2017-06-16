class Animal
  include Superpowers
  attr_writer :alive

  def initialize
    @alive = true
  end

  def alive?
    @alive
  end
end

class Mammal < Animal
  include Superpowers
  attr_accessor :warm_blooded
  def initialize
    super
    @warm_blooded  = "Yes I'm warm blooded"
  end

end

class Amphibian < Animal
  include Superpowers
  attr_accessor :cold_blooded

  def initialize
    super
    @cold_blooded = "Yes I'm cold blooded"
  end

end

class Primate < Mammal
  include Superpowers
  attr_accessor :mix
  def initialize
    super
    @mix = "Yes I include both Chimpanzees and Orangutans"
  end

end

class Frog < Amphibian
  include Superpowers
  attr_accessor :sticky_tongue
  def initialize
    @sticky_tongue = true
  end

  def sticky_tongue_a
    @sticky_tongue
  end
end

class Bat < Mammal
  include Superpowers
  attr_accessor :can_fly
  def initialize
    @can_fly = true
  end

  def can_fly?
    @can_fly
  end
end

class Chimpanzee < Primate
  include Superpowers
  attr_accessor :opposable_thumbs

  def initialize
    @opposable_thumbs = true
  end

  def opposable_thumbs?
    @opposable_thumbs
  end
end

class Whale < Mammal #subclase
  include Superpowers
  attr_accessor :swim_underwater, :num_fins
  def initialize
    @swim_underwater = true
    @num_fins = 4
  end


  def swim_underwater?
    @swim_underwater
    @num_fins
  end
end

module Superpowers
  def use_laser_vision
    "Veo a través de las paredes!"
  end
end
