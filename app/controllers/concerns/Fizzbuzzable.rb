module Fizzbuzzable

  def Fizzbuzzness value
    ret = ""
    if ((value % 3) == 0) && ((value % 5) == 0)
      ret = "FizzBuzz"
    elsif (value % 5) == 0
      ret = "Buzz"
    elsif (value % 3) == 0
      ret = "Fizz"
    end
    ret
  end

end