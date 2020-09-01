class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters = [])
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
      total_amount = 0
        characters.map do |character|
          total_amount += character.attributes[:salary].to_s.to_i
        end
      total_amount
  end


  def highest_paid_actor
    highest_salary =
      characters.max_by do |character|
        character.attributes[:salary].to_s.to_i
      end
      highest_salary.attributes[:name]
  end

  def actors
    actor_names = []
    characters.each do |character|
      actor_names << character.attributes[:actor]
    end
    actor_names
  end




end
