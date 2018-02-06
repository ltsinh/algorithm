class Image
  ON = 1
  OFF = 0

  def initialize (image)
    @image = image
  end

  def height
    @image.size
  end

  def width
    @image.first.size
  end

  def to_s
    output = ""

    @image.each do |row|
      output = output + "[" + row.join(', ') + "]"
      output += "\n"
    end
    output
  end

   def blur!
     ones = []
     @image.each_with_index do |rows, row|
       rows.each_with_index do |num, column|
         ones << [row, column] if num == 1
       end
     end
     ones.each do |row, column|
       turn_on_the_pixel_above! row, column
       turn_on_the_pixel_down! row, column
       turn_on_the_pixel_left! row, column
       turn_on_the_pixel_right! row, column
     end
   end

   def blur_distance (number)
     number.times do
       blur!
     end
   end

  private

  def turn_on_the_pixel_above!(row, column)
    above = row - 1
    return if above.negative?

    @image[above][column] = ON
  end


  def turn_on_the_pixel_down!(row, column)
    down = row + 1
    return if @image[down].nil?
    @image[down][column] = ON
  end


  def turn_on_the_pixel_left!(row, column)
    left = column - 1
    return if left.negative?
    @image[row][left] = ON
  end

  def turn_on_the_pixel_right!(row, column)
    right = column + 1
    return if @image[right].nil?
    @image[row][right] = ON
  end

end


image = Image.new([
[0, 0, 0, 0, 0, 0, 0, 0, 0],#1
[0, 0, 0, 0, 0, 0, 0, 0, 0],#2
[0, 0, 0, 0, 0, 0, 0, 0, 0],#3
[0, 0, 0, 0, 0, 0, 0, 0, 0],#4
[1, 0, 0, 0, 0, 0, 0, 0, 0],#5
[0, 0, 0, 0, 0, 0, 0, 0, 0],#6
[0, 0, 0, 0, 0, 0, 0, 0, 0],#7
[0, 0, 0, 0, 0, 0, 0, 0, 0],#8
[0, 0, 0, 0, 0, 0, 0, 0, 0],#9
[0, 0, 0, 0, 0, 0, 0, 0, 0],#10
[0, 0, 0, 0, 0, 0, 0, 0, 0],#11
[0, 0, 0, 0, 0, 0, 0, 0, 0]#12
])


image.blur_distance(3)
puts
puts image
