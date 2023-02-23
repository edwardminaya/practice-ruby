# 1. VARIABLES, ARRAYS, AND LOOPS
# Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the p keyword.
# puts "what are your five favorite foods: "
# fave_food = []
# 5.times do
#   food = gets.chomp
#   fave_food << food
# end

# fave_food.each do |food|
#   puts "I love #{food}"
# end

# i = 1
# fave_food.each do |food|
#   puts "#{i}. #{food}"
#   i += 1
# end

# # 2. OPERATORS AND CONDITIONALS
# # Translate the following into ruby code. Run the program to make sure it works

# # Sam enjoys cooking. Make an array with recipe names to represent the different recipes Sam can cook.
# recipe_names = ["fries", "pizza", "tacos", "burrito"]

# #Sally speaks many languages. Make an array with language names to represent the languages Sally can speak.
# languages = ["French", "Spanish", "Korean", "Italian"]

# # If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. Based on the above arrays, print out a message describing whether or not they should date.
# if recipe_names.length > 10 && languages.length > 5
#   puts "Sam and Sally should date."
# else
#   puts "Sam and Sally shouldn't date."
# end

# # If Sam can make crepes or Sally can speak French, they should marry. Based on the above arrays, print out a message describing whether or not they should marry.
# if recipe_names.include?("crepes") && languages.include?("French")
#   puts "Sam and Sally should marry."
# else
#   puts "Sam and Sally should not marry"
# end

# # 3. HASHES
# # Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.
# # Each person should automatically be given an account number which is a randomized ten digit number.
# people = []
# 5.times do
#   person = {}
#   puts "enter first name, last name, and email: "
#   first_name = gets.chomp
#   last_name = gets.chomp
#   email = gets.chomp
#   person["first_name"] = first_name
#   person["last_name"] = last_name
#   person["email"] = email
#   person["account"] = rand(10 ** 10)
#   people << person
# end

# i = 0
# 5.times do
#   puts "FIRST NAME: #{people[i]["first_name"]}"
#   puts "LAST NAME: #{people[i]["last_name"]}"
#   puts "EMAIL: #{people[i]["email"]}"
#   puts "ACCOUNT#: #{people[i]["account"]}"
#   i += 1
# end

# 4. FINAL REVIEW
# Create a program that puts your class into groups! Have the program request the user to enter each student’s name. Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:
# Group: Hermione Seamus
# Group: Lucius Cho
# Group: Sirius Luna
# Group: Severus Draco
group1 = []
group2 = []
group3 = []
group4 = []
while true
  puts "enter each students name: (when your done type 'done')"
  student_name = gets.chomp
  if student_name == "done"
    break
  elsif group1.length < 2
    group1 << student_name
  elsif group2.length < 2
    group2 << student_name
  elsif group3.length < 2
    group3 << student_name
  elsif group4.length < 3
    group4 << student_name
  end
end

p group1
p group2
p group3
p group4

# Refactor the program to take an odd or even number of students. If odd, one group should have three students.
