puts "Welcome to Crystal's Walk-A-Thon Tracker"
puts "Our goal is to raise money!"

puts" Enter the earning goal for this event"
e=gets.chomp.to_f
#puts"Enter the amount earned per lap (per person)"
#epp=gets.chomp.to_f
n=5
list=Array.new(n)
i=0
sum=0
list.each { |x|
#for i in 0..n-1
  x=Hash.new
  puts "Enter number of laps completed for peson nunber #{i+1}"
  x[:complet_lap] = gets.chomp
  puts"Enter the amount earned per lapfor peson nunber #{i+1}:"
  x[:earning_per_lap] = gets.chomp
  x[:earning] = x[:complet_lap].to_f*x[:earning_per_lap].to_f
  list[i]=x
  sum+= x[:earning]
 i+=1
#end
}
puts list
a=list.max_by{|m| m[:earning]}
puts "Highest Earning Walker# #{list.index(a)+1}"
puts "Total amount earned $#{"%.2f"% sum}"
if sum<e 
  puts "Goal Met? NO :-("
  puts "The goal was missed by $#{"%.2f"% (e-sum)}"
   else
  puts "Goal Met? YES :-)"
end