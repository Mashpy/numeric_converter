def translate(int)
  translate_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  firststr = "new"
  translate_name.each do |number, name|
    if int == 0
      return firststr
    elsif int.to_s.length == 1 && int/number > 0
      return firststr + "#{name}"      
    elsif int < 100 && int/number > 0
      return firststr + "#{name}" if int%number == 0
      return firststr + "#{name} " + translate(int%number)
    elsif int/number > 0
      return firststr + translate(int/number) + " #{name} " + translate(int%number)
    end
  end
end

getnumber = gets.chomp

puts translate(getnumber.to_i)