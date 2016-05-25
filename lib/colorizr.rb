require 'colorizr'

class String
  attr_accessor :string

  @@colors = String.methods

  def red
    @string = "\e[31m#{@string}\e[0m"
  end

  def green
    @string = "\e[32m#{@string}\e[0m"
  end

  def yellow
    @string = "\e[33m#{@string}\e[0m"
  end

  def blue
    @string = "\e[34m#{@string}\e[0m"
  end

  def pink
    @string = "\e[35m#{@string}\e[0m"
  end

  def light_blue
    @string = "\e[94m#{@string}\e[0m"
  end

  def white
    @string = "\e[97m#{@string}\e[0m"
  end

  def light_grey
    @string = "\e[37m#{@string}\e[0m"
  end

  def black
    @string = "\e[30m#{@string}\e[0m"
  end

  def self.create_colors
    #code to generate all color methods goes here
  end

  def self.colors
    @@colors
  end
end

puts String.colors
