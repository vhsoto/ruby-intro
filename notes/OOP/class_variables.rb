class Dad
  @@things = ['sofa', 'car', 'tv']

  def initialize
    self
  end

  def things
    @@things
  end
end


class Child < Dad
  @@things = ['juguetes']
end

p Dad.things
p Child.things
