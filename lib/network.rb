class Network
  attr_reader :name, :shows
  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show_name)
    shows << show_name
  end

  def main_characters
    names =[]
    shows.characters.find_all do |character|
      names << shows[character].attributes[:salary] > 500000
    end
    names
  end
end
