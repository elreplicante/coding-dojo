class Point

  def initialize x, y
    @x = x
    @y = y
  end

  def to_hash
    { x: @x, y: @y }
  end

  def offset_y offset
    Point.new @x, @y + offset
  end
end