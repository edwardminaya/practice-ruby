# Exercise 1: Print a message to a pirate
puts "Hello!"
greeting = gets.chomp()

if greeting == "Arrr!"
  puts "Go away, pirate."
else
  puts "Greetings, hater of pirates!"
end

# Exercise 2: Write a function to print when each person died in a sentence.
dickens = ["Charles Dickens", "1870"]
thackeray = ["William Thackeray", "1863"]
trollope = ["Anthony Trollope", "1882"]
hopkins = ["Gerard Manley Hopkins", "1889"]

def died(array)
  name = array[0]
  year = array[1]
  puts "#{name} died in #{year}."
end

puts died(dickens)
puts died(thackeray)
puts died(trollope)
puts died(hopkins)

# Exercise 3: Print a message to a time traveler
puts "Greetings! What is your year of origin?"
origin = gets.chomp.to_i
if origin < 1900
  puts "That's the past!"
elsif origin >= 1900 && origin <= 2020
  puts "That's the present!"
else
  puts "That's the future!"
end

# Exercise 4: Make a class to store and display a person's info
class Person
  def initialize(firstname, lname)
    @first_name = firstname
    @last_name = lname
  end

  def to_s
    @last_name + ", " + @first_name
  end
end

tj = Person.new("Thomas", "Jefferson")
puts tj.to_s
puts tj

# Exercise 5: Write a program that will average 3 numeric exam grades, return an average test score, a corresponding letter grade, and message stating the student is passing
exam_scores = []
3.times do
  puts "Input exam grade: "
  score = gets.chomp.to_i
  exam_scores << score
end

def list_grade(array)
  i = 1
  array.each do |score|
    puts "Exam #{i} score is: #{score}"
    i += 1
  end
end

def average_grade(array)
  sum = 0
  array.each do |score|
    sum += score
  end
  puts "The average score is #{sum / array.length}"
end

def letter_grade(array)
  sum = 0
  array.each do |score|
    sum += score
  end
  average_grade = sum / array.length
  if average_grade < 59
    puts "Grade: F"
  elsif average_grade >= 60 && average_grade <= 69
    puts "Grade: D"
  elsif average_grade > 70 && average_grade <= 79
    puts "Grade: C"
  elsif average_grade >= 80 && average_grade <= 89
    puts "Grade: B"
  elsif average_grade >= 90
    puts "Grade: A"
  end
end

def pass_fail(array)
  sum = 0
  array.each do |score|
    sum += score
  end
  average_grade = sum / array.length
  if average_grade < 59
    puts "Student is failling"
  else
    puts "Student is passing"
  end
end

list_grade(exam_scores)
average_grade(exam_scores)
letter_grade(exam_scores)
pass_fail(exam_scores)
