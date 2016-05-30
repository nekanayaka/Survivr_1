require 'colorizr'

class String

  @@colors = {red: 31, green: 32, yellow: 33, blue: 34, pink: 35, light_blue: 94, white: 97, light_grey: 37, black: 30}

  def self.create_colors
    for color, value in @@colors
      self.send(:define_method, color) do
        "\e[#{value}m#{self}\e[0m"
      end
    end
  end
  
  def self.sample_colors
    for color in @@colors
      "This is #{color}".send(color)
    end
  end

  def self.colors
    colors = []
    for color in @@colors
      colors.push(color)
    end
    colors
  end
end

String.create_colors
