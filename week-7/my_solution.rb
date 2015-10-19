# Virus Predictor

# I worked on this challenge [by myself, with: Adell Hanson-Kahn].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
## require_relative vs require: require relative looks for a resource in a path relative to your current location, whereas require will check for an absolute link and if not given then will look in the folder you're in and then in $LOAD_PATH

require_relative 'state_data'




class VirusPredictor
  #   Runs when we instantiate the class; declares three instance variables from passed in arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Call two other methods, pass instance variables as arguments to each
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private
  # Take three state arguments, leverage nested if/elsif to calculate death toll for that state ( and print it).
  def predicted_deaths
    # predicted deaths is solely based on population density       
    case @population_density      
    when (50..200)
      number_of_deaths = (@population * (@population_density.floor / 50 * 50) / 500.0).floor
    when (0..49)
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * 0.4).floor  
    end       
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  
  # Recieve population_density and state; calculates how many months it will take for the virus to spread across a state based on the state's population_density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density      
    when (50..200)
      speed += 2.5 - ((@population_density.floor / 50) * 0.5) 
    when (0..49)
      speed += 2.5
    else
      speed += 0.5  
    end   
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# iterate through state data and print out virus effects for each

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects  
end

=begin
#=======================================================================
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

In the state_data file we see a hash with a key set as a String and a key set as a symbol.  

What does require_relative do? How is it different from require?

require_relative vs require: require relative looks for a resource in a path relative to your current location, whereas require will check for an absolute link and if not given then will look in the folder you're in and then in $LOAD_PATH.

In this case because the state_data.rb file is called with require_relative, ruby checks for the file within the same folder first.  If state_data.rb was up a folder in something like data we would have to write something like require_relative "data/state_data.rb"

What are some ways to iterate through a hash?

For this problem we used the each method to go through the hash and select the key and value pair.

When refactoring virus_effects, what stood out to you about the variables, if anything?

The variables in the arguments were not needed.  The instance variables defined with the initialize method can be accessed by the other methods without calling them with arguments.

What concept did you most solidify in this challenge?

Instance variables and refactoring.  I really enjoyed working with Adell, we were able to work on many different concepts I wasn't fully familiar with and he was able to explain them in a way that made sense to me.  I have a much better handle on instance variables and instance methods now for classes.  I also have a better grasp on different class functions like private now and why they might be used.

=end