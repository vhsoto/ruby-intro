class Array

  def pad (min_size, value = nil)
     copy = self.clone
    if copy.length >= min_size
      return copy
    else
      until copy.length == min_size
        copy.push(value)
      end
      copy
    end
  end

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



