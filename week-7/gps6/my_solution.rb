# Virus Predictor

# I worked on this challenge [with: Shea].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative examines the working directory for a specified file. This file is necessary in order to run the current program
#
# Virus Predictor

# I worked on this challenge [with: Shea].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# 
#
# require_relative 'state_data'

class VirusPredictor
  # def initialize initializes the instance variables and the arguments necessary to start the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # def virus_effects will return the predicted_deaths and speed_of_spread when called
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # def predicted_deaths calculates deaths based on population density and population found in the state_data.rb file and rounds down using .floor
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  
  #def speed_of_spead calculates how many months it will take for the virus to spread to the state based on population density found in state_data.rb
 def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value| 
  
  report = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])

    report.virus_effects
end
  
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section


#=======================================================================
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

  One of the hashes uses the "rocket" (=>) and one uses symbols to indicate keys and values.

What does require_relative do? How is it different from require?

  require_relative looks for a file within the directory from which to pull other code or data.

What are some ways to iterate through a hash?

  You can iterate through the entire hash and use a loop to look at specific pieces of nested data, if there is nested data there. We originally tried a loop within a loop but it was over complicated. You can call specific keys in a hash by name, rather than by index in an array.

When refactoring virus_effects, what stood out to you about the variables, if anything?

What my partner and I decided is that the variables just weren't necessary. It was more work to require an argument, or in this case, several arguments, when it is already using the instance variables within the class and the variables themselves don't need to be set as required arguments in order for the method to work.

What concept did you most solidify in this challenge?

In our previous challenges, we really didn't get much practice with nested hashes, more with nested arrays. It was nice to get more practice with this, and a nice Ruby refresher in general after a week working with Javascript.