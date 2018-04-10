=begin
puts "Give me a number"
number=gets.chomp.to_f

range =(1...number)

condition= Proc.new {|x| x%3==0 or x%5==0}
rightrange=range.select(&condition)
sum =rightrange.inject(0) {|result,element| result + element}
puts sum
=end 




def multiples_de_3_et_5
   i = 0
   (1...1000).each do |num|
       if num%3==0 || num%5==0
           i = i+num
       end
   end    
   puts i
end

multiples_de_3_et_5
