class Changer
  def self.make_change(big)
    change = []
    while big > 0
      if big >= 25
        num = 25
      elsif big >= 10
        num = 10
      elsif big >= 5
        num = 5
      else
        num = 1
      end
      change << num
      big -= num
    end
    change.sort!.reverse!
  end

end

puts Changer.make_change(35)
