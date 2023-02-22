# Represent employee data as an array

employee1 = ["Majora", "Carter", 80000, true]
employee2 = ["Danilo", "Campos", 70000, true]

# This is too tedious and difficult to manage
puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year"

#Use interpolation, but it not the best way to read
puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# Representing employee data as a hash
employee1 = { :first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true }
employee2 = { :first_name => "Danil", :last_name => "Campos", :salary => 70000, :active => true }

puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."

#Represent employee data as a class

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def active
    @active
  end

  def active=(input_active)
    @active = input_active
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new("Majora", "Carter", 80000, true)
employee2 = Employee.new("Danilo", "Campos", 70000, true)
employee1.print_info
employee2.print_info
# Does not print out raise must use print_info to see raise.
employee1.give_annual_raise
employee2.give_annual_raise
employee1.print_info
employee2.print_info
p employee1.first_name
p employee2.last_name
employee2.active = false
p employee2.active
