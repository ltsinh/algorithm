class Image
  def initialize(image)
    @image = image
  end

  def to_s
    output = ''
    @image.each do |array|
     output = output + '[' + array.join(', ') + ']'
       output += "\n"
    end

    output
  end


end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

puts image
