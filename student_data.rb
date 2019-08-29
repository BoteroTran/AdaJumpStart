student_data = [
  {
    name: "Mary Jane",
    ID: 1000000,
    email: "mjane@adadevelopersacademy.org"
  },
  {
    name: "Jones Smith",
    ID: 1000001,
    email: "jsmith@adadevelopersacademy.org"
  }
]
i=1
new_student_data=student_data.each do |x|
  puts "input name of student #{i}"
  x[:name]=gets.chomp
  x[:ID]=rand
  x[:email]
  i+=1
  end

 new_student_data.each { |x|
  x.each {|a,b|
  puts "#{a}:#{b}"}
 }
