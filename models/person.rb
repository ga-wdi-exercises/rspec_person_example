class Person
  attr_accessor :name, :language

  def initialize(name, language = "English")
    @name = name
    @language = language
  end

  def greeting
    case language
    when /english/i
      "Hello, my name is #{name}."
    when /italian/i
      "Ciao, mi chiamo #{name}."
    else
      fail ArgumentError.new("That language (#{language}) is not supported for #greeting.")
    end
  end
end
