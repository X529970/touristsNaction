
class Tourist 
  def initialize
   # vector function  to be rotated counter clockwise
   @walk = 
   [lambda {
			puts"walking north\n" 
			puts"is that ok?\n"
			return(0)
			}, 
   lambda { 
			puts"walking east\n"
			puts"is that ok?\n"
			return(1)
			}, 
   lambda { 
			puts"walking south\n"
			puts"is that ok?\n"
			return(2)
			}, 
   lambda { 
			puts"walking west\n"
			puts"is that ok?\n"
			return(3)
			}
			]
	# vector function to be rotated	
	@next_goal =
	[lambda {
				puts"looking for a restaurant to eat\n"
				return(0)
				},
	 lambda	{
				puts"looking for the Empire State BUilding\n"
				return(1)
				}
	]		
  end

  def is_walking
     @walk[0].call
  end

  def is_looking_for
	 @next_goal[0].call
  end
  
  def turns_right
	 @walk << @walk.shift
  end
  
  def changes_goal
	@next_goal << @next_goal.shift
  end

end

justin=Tourist.new
rahel=Tourist.new
justin.is_walking
justin.is_walking
rahel.is_walking
justin.turns_right
justin.is_walking
justin.turns_right
justin.is_walking
justin.turns_right
justin.is_walking
rahel.is_looking_for
rahel.changes_goal
rahel.is_looking_for
justin.is_looking_for
