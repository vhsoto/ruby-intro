class Array

  # NO destructiva
  def pad (array, value = nil)
     copy = .clone
    if copy.length >= array.size
      return copy
    else
      until copy.length == array.size
        copy.push(value)
      end
      copy
    end
  end

  # Destructiva
  def pad! (min_size, value = nil)
    if self.length >= min_size
      return self
    else
      until self.length == min_size
        self.push(value)
      end
      self
    end
  end

end



