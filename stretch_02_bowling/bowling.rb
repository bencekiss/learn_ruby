require 'pry'
#Rules of Bowling
#The game consists of 10 frames.  In each frame the player has two opportunities to knock down 10 pins.  The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.

#A spare is when the player knocks down all 10 pins in two tries.  The bonus for that frame is the number of pins knocked down by the next roll.

#A strike is when the player knocks down all 10 pins on his first try.  The bonus for that frame is the value of the next two balls rolled.

#In the tenth frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame.  However no more than three balls can be rolled in the tenth frame.

#Once you have all of the tests passing, go back and **refactor** your code to make it more concise and readable.

class Game
  attr_accessor :scores
  def initialize
    @scores = 0
  end

  def score(rolls)
    points = 0
    bonuspoints = 0

    i = 0

    # for i in (0..rolls.length)
    loop do
      if rolls[i + 1] && i <= 17
        # if the party goes up to the 18th roll, there are no bonus points for the last 3 rolls.
        
        if rolls[i] + rolls[i + 1] > 10
          # strike
          # binding.pry
          # unless we get to the last frame
          if i + 2 < rolls.length - 1
            bonuspoints += rolls[i+1] + rolls[i+2]
          end
          points += rolls[i]
          i += 1
        elsif rolls[i] + rolls[i + 1] == 10
          # spare
          bonuspoints += rolls[i + 2]
          points += rolls[i] + rolls[i + 1]
          # i += 2
          # binding.pry
          i += 2
        else
          # some score
          bonuspoints += 0
          points += rolls[i] + rolls[i + 1]
          i += 2
          # i += 1
        end
      elsif rolls[i]
        points += rolls[i]
        i += 1
      end
      break if i >= rolls.length
    end
    points += bonuspoints
    points
  end



end
